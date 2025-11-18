import { Request, Response } from "express";
import {
  getProductByIdService,
  getProductService,
  getProductSuggestedService,
} from "../services/product.service";

export const getProductController = async (req: Request, res: Response) => {
  try {
    const page = Number(req.query.page) || 0;
    const size = Number(req.query.size) || 10;
    const categoria = Number(req.query.categoria) || -1;

    const products = await getProductService(page, size, categoria);

    res.status(200).json({
      ok: true,
      message: "Products fetched successfully",
      data: products,
      dateTime: new Date().toISOString(),
      detail: `Returned page ${page} with size ${size}`,
    });
  } catch (error: any) {
    res.status(500).json({
      ok: false,
      message: "Error fetching products",
      data: null,
      dateTime: new Date().toISOString(),
      detail: error.message,
    });
  }
};

export const getProductByIdController = async (
  req: Request,
  res: Response
): Promise<any> => {
  const id = parseInt(req.params.id, 10);

  try {
    const product = await getProductByIdService(id);

    res.status(200).json({
      ok: true,
      message: "Product fetched successfully",
      data: product,
      dateTime: new Date().toISOString(),
      detail: `Returned product with id ${id}`,
    });
  } catch (error: any) {
    const statusCode = error.message === "Product not found" ? 404 : 500;

    res.status(statusCode).json({
      ok: false,
      message: "Error fetching product",
      data: null,
      dateTime: new Date().toISOString(),
      detail: error.message,
    });
  }
};

export const getProductSuggestedController = async (
  req: Request,
  res: Response
): Promise<any> => {
  try {
    const producto = Number(req.query.producto) || 1;
    const categoria = Number(req.query.categoria) || 1;

    const products = await getProductSuggestedService(producto, categoria);

    res.status(200).json({
      ok: true,
      message: "Suggested products fetched successfully",
      data: products,
      dateTime: new Date().toISOString(),
      detail: `Returned suggested products for product ${producto} in category ${categoria}`,
    });
  } catch (error: any) {
    res.status(500).json({
      ok: false,
      message: "Error fetching suggested products",
      data: null,
      dateTime: new Date().toISOString(),
      detail: error.message,
    });
  }
};
