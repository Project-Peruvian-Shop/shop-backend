import { PaginatedResponse } from "../types/global.type";
import { Producto } from "../types/product.type";
import { supabase } from "../utils/supabaseClient";

export const getProductService = async (
  page: number = 0,
  size: number = 10
): Promise<PaginatedResponse<Producto>> => {
  const from = page * size;
  const to = from + size - 1;

  const { data, error, count } = await supabase
    .from("producto")
    .select("*", { count: "exact" })
    .range(from, to);

  if (error) {
    throw new Error("DB: " + error.message);
  }

  const totalElements = count ?? 0;
  const totalPages = Math.ceil(totalElements / size);

  const paginated: PaginatedResponse<Producto> = {
    content: data ?? [],
    totalPages,
    totalElements,
    number: page,
    size: size,
    first: page === 0,
    last: page === totalPages - 1,
  };

  return paginated;
};

export const getProductByIdService = async (id: number): Promise<Producto> => {
  const { data, error } = await supabase
    .from("producto")
    .select("*")
    .eq("id", id)
    .single();

  if (error) {
    throw new Error("DB: " + error.message);
  }

  return data as Producto;
};

export const getProductSuggestedService = async (
  producto: number = 1,
  categoria: number = 1
): Promise<Producto[]> => {
  const { data, error } = await supabase
    .from("producto")
    .select("*")
    .neq("id", producto)
    .eq("categoria_id", categoria)
    .limit(4);

  if (error) {
    throw new Error("DB: " + error.message);
  }

  return data as Producto[];
};
