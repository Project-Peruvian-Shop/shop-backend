import { Request, Response } from "express";
import { getProductService } from "../services/product.service";

export const getProductController = async (
  req: Request,
  res: Response
): Promise<any> => {
  try {
    const products = await getProductService();

    res.status(200).json({
      ok: true,
      message: "Products fetched successfully",
      data: products,
      dateTime: new Date().toISOString(),
      detail: "Returned all products",
    });
  } catch (error: any) {
    const statusCode = error.message === "Products not found" ? 404 : 500;

    res.status(statusCode).json({
      ok: false,
      message: "Error fetching products",
      data: null,
      dateTime: new Date().toISOString(),
      detail: error.message,
    });
  }
};
