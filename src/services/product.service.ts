import { PaginatedResponse } from "../types/global.type";
import { PaginatedProductoResponseDTO, Producto, ProductoPaginated } from "../types/product.type";
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
): Promise<PaginatedResponse<PaginatedProductoResponseDTO>> => {
  const from = page * size;
  const to = from + size - 1;

  let query = supabase
    .from("producto")
    .select(
      `
        id,
        nombre,
        imagen:imagen_id ( id, enlace, alt ),
        categoria:categoria_id ( id, nombre )
      `,
      { count: "exact" }
    )
    .range(from, to);

  if (categoria !== -1) {
    query = query.eq("categoria_id", categoria);
  }

  const { data, error, count } = await query;

  if (error) {
    throw new Error("DB: " + error.message);
  }

  const totalElements = count ?? 0;
  const totalPages = Math.ceil(totalElements / size);

  // Normalización por si Supabase devuelve array u objeto
  const toOne = <T>(value: T | T[]): T =>
    Array.isArray(value) ? value[0] : value;

  const content: PaginatedProductoResponseDTO[] =
    (data ?? []).map((prod: any) => {
      const imagen = toOne(prod.imagen);
      const categoria = toOne(prod.categoria);

      return {
        id: prod.id,
        nombre: prod.nombre,
        imagenUrl: imagen?.enlace ?? "",
        imagenAlt: imagen?.alt ?? "",
        categoriaNombre: categoria?.nombre ?? "",
      };
    });

  return {
    content,
    totalPages,
    totalElements,
    number: page,
    size,
    first: page === 0,
    last: page === totalPages - 1,
  };
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
