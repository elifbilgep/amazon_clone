//IMPORT FROM PACKAGES
const express = require("express"); //it is like import in flutter
const mongoose = require("mongoose");
const authRouter = require("./auth");

//INIT
const app = express();
const PORT = 3000;
const DB =
  "mongodb+srv://elifbilgep:Kaburga.9@cluster0.dftn5ug.mongodb.net/?retryWrites=true&w=majority";

//IMPORTS FROM OTHER FİLES

//middleware
//CLIENT -> SERVER -> CLIENT
app.use(express.json());
app.use(authRouter);

//Connections
mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection successful");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log("Connected at port");
});
