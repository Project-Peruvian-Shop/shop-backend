import { Router } from "express";
import { getProductController } from "../controllers/product.controller";

const productRoute = Router();

productRoute.get("/paginated", getProductController);

export default productRoute;
