import dotenv from "dotenv";
dotenv.config();
import { createApp } from "./app";

const app = createApp();

const PORT = process.env.PORT || 8000;

app.listen(PORT, () => {
  console.log(`server start : http://localhost:${PORT}`);
})