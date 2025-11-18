import { getCategoryQuantityService } from "../services/category.service";
import { Request, Response } from "express";

export const getCategoryQuantityController = async (
  req: Request,
  res: Response
): Promise<any> => {
  try {
    const category = await getCategoryQuantityService();

    res.status(200).json({
      ok: true,
      message: "Category fetched successfully",
      data: category,
      dateTime: new Date().toISOString(),
      detail: `Returned category list with quantity`,
    });
  } catch (error: any) {
    const statusCode = error.message === "Category not found" ? 404 : 500;

    res.status(statusCode).json({
      ok: false,
      message: "Error fetching category",
      data: null,
      dateTime: new Date().toISOString(),
      detail: error.message,
    });
  }
};
