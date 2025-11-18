import { Router } from "express";
import {
  getProductByIdController,
  getProductController,
} from "../controllers/product.controller";

const productRoute = Router();

productRoute.get("/paginated", getProductController);
productRoute.get("/:id", getProductByIdController);

export default productRoute;
