export interface Producto {
  id: number;
  nombre: string;
  descripcion: string;
  imagen_id: number;
  categoria_id: number;
}

export interface ProductoPaginated {
  id: number;
  nombre: string;
  descripcion: string;
  productoEnlace: string;
  productoAlt: string;
  categoriaId: number;
  categoriaNombre: string;
  categoriaEnlace: string;
  categoriaAlt: string;
  categoriaUsos: string;
}

export interface PaginatedProductoResponseDTO {
  id: number;
  nombre: string;
  imagenUrl: string;
  imagenAlt: string;
  categoriaNombre: string;
}