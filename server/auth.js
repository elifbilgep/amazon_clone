const express = require("express");
const User = require("./models/user");
const bcryptjs = require("bcryptjs");
const e = require("express");
const authRouter = express.Router();
const jwt = require("jsonwebtoken");
const auth = require("./middlewares/auth");
//sign up Call
authRouter.post("/api/signup", async (req, res) => {
  //get the data from the client
  try {
    const { name, email, password } = req.body;
    const existingUser = await User.findOne({ email }); //Checking the same user is already exists

    if (existingUser) {
      //if existing user consists anything
      return res
        .status(400)
        .json({ msg: "User with same email already exists!" });
    }

    const hashedPassword = await bcryptjs.hash(password, 8);

    let user = new User({
      email,
      password: hashedPassword,
      name,
    });

    //post that data in database
    //to do that we use mongoose package
    user = await user.save();
    res.json(user);
    //return that data to the user
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

//Sign In => Post Call
authRouter.post("/api/signin", async (req, res) => {
  try {
    const { email, password } = req.body;

    const user = await User.findOne({ email });

    if (!user) {
      return res
        .status(400)
        .json({ msg: "User with this email does not exist" });
    }
    const isMatch = await bcryptjs.compare(password, user.password);
    if (!isMatch) {
      return res.status(400).json({ msg: "Incorrect password." });
    }
    const token = jwt.sign({ id: user._id }, "passwordKey");
    res.json({ token, ...user._doc });
  } catch (error) {
    res.status(500).json({ error: e.message });
  }
});

//ask if the token is valid or not
authRouter.post("/tokenIsValid", async (req, res) => {
  try {
    const token = req.header("x-auth-token");
    if (!token) return res.json(false);
    const verified = jwt.verify(token, "passwordKey");
    if (!verified) return res.json(false);

    const user = await User.findById(verified.id);
    if (!user) return res.json(false);
    res.json(true);
  } catch (error) {
    res.status(500).json({ error: e.message });
  }
});

//get user data => GET Call
authRouter.get("/", auth, async (req, res) => {
  const user = await User.findById(req.user);
  res.json({ ...user._doc, token: req.token });
});

//EXPORTING VARİABLE
module.exports = authRouter;
