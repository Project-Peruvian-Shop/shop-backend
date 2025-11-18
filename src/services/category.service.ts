import { Categoria } from "../types/category.type";
import { supabase } from "../utils/supabaseClient";

export const getCategoryQuantityService = async (): Promise<Categoria[]> => {
  const { data, error } = await supabase.rpc("get_categorias_with_quantity");

  if (error) {
    throw new Error("DB: " + error.message);
  }

  return data as Categoria[];
};
