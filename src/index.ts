import express, { Application } from "express";
import cors from "cors";
import dotenv from "dotenv";
import productRoute from "./routes/product.route";
import categoryRoute from "./routes/category.route";

dotenv.config();

const app: Application = express();

// Middlewares
app.use(cors());
app.use(express.json());

// Routes
app.get("/", (req, res) => {
  res.status(200).json({
    message: "API v1 is running",
    version: "1.0.0",
  });
});

app.use("/api/v1/producto", productRoute);
app.use("/api/v1/categoria", categoryRoute);

// Vercel
export default app;

// Local server
// const PORT = Number(process.env.PORT) || 5000;

// app.listen(PORT, "0.0.0.0", () => {
//   console.log(`Server running on port http://localhost:${process.env.PORT}`);
// });
