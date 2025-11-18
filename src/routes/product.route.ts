import { Router } from "express";
import {
  getProductByIdController,
  getProductController,
  getProductSuggestedController,
} from "../controllers/product.controller";

const productRoute = Router();

productRoute.get("/paginated", getProductController);
productRoute.get("/sugeridos", getProductSuggestedController);
productRoute.get("/:id", getProductByIdController);

export default productRoute;
