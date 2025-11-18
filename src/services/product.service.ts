import { PaginatedResponse } from "../types/global.type";
import { Producto, ProductoPaginated } from "../types/product.type";
import { supabase } from "../utils/supabaseClient";

type Imagen = { id: number; enlace: string; alt: string };
type Categoria = {
  id: number;
  nombre: string;
  usos: string;
  norma: string;
  imagen: Imagen;
};
type ProductoDB = {
  id: number;
  nombre: string;
  descripcion: string;
  imagen: Imagen;
  categoria: Categoria;
};

export const getProductService = async (
  page: number = 0,
  size: number = 10,
  categoria: number = 1
): Promise<PaginatedResponse<Producto>> => {
  const from = page * size;
  const to = from + size - 1;

  let data;
  let error;
  let count;

  if (categoria === -1) {
    ({ data, error, count } = await supabase
      .from("producto")
      .select("*", { count: "exact" })
      .range(from, to));
  } else {
    ({ data, error, count } = await supabase
      .from("producto")
      .select("*", { count: "exact" })
      .eq("categoria_id", categoria)
      .range(from, to));
  }

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
    size,
    first: page === 0,
    last: page === totalPages - 1,
  };

  return paginated;
};

export const getProductByIdService = async (
  id: number
): Promise<ProductoPaginated> => {
  const { data, error } = await supabase
    .from("producto")
    .select(
      `
    id,
    nombre,
    descripcion,
    imagen:imagen_id ( id, enlace, alt ),
    categoria:categoria_id (
      id,
      nombre,
      usos,
      norma,
      imagen:imagen_id ( id, enlace, alt )
    )
  `
    )
    .eq("id", id)
    .single();

  if (error) throw new Error("DB: " + error.message);

  const product = data as unknown as ProductoDB;

  console.log(data);
  return {
    id: product.id,
    nombre: product.nombre,
    descripcion: product.descripcion,
    productoEnlace: product.imagen.enlace,
    productoAlt: product.imagen.alt,
    categoriaId: product.categoria.id,
    categoriaNombre: product.categoria.nombre,
    categoriaEnlace: product.categoria.imagen.enlace,
    categoriaAlt: product.categoria.imagen.alt,
    categoriaUsos: product.categoria.usos,
  };
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
