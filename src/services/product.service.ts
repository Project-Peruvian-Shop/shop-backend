import { GlobalResponse, PaginatedResponse } from "../types/global.type";
import { Producto } from "../types/product.type";
import { supabase } from "../utils/supabaseClient";

export const getProductService = async (
  page: number = 1,
  limit: number = 10
): Promise<GlobalResponse<PaginatedResponse<Producto>>> => {
  const from = (page - 1) * limit;
  const to = from + limit - 1;

  const { data, error, count } = await supabase
    .from("producto")
    .select("*", { count: "exact" })
    .range(from, to);

  if (error) {
    throw new Error("DB: " + error.message);
  }

  // construir la paginación
  const totalElements = count ?? 0;
  const totalPages = Math.ceil(totalElements / limit);

  const paginated: PaginatedResponse<Producto> = {
    content: data ?? [],
    totalPages,
    totalElements,
    number: page,
    size: limit,
    first: page === 1,
    last: page === totalPages,
  };

  return {
    ok: true,
    message: "Productos obtenidos",
    data: paginated,
    timestamp: new Date().toISOString(),
    details: null,
  };
};
