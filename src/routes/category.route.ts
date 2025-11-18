import { Router } from "express";
import { getCategoryQuantityController } from "../controllers/category.controller";

const categoryRoute = Router();

categoryRoute.get("/all-and-quantity", getCategoryQuantityController);

export default categoryRoute;
