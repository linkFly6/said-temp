import * as express from "express";
import * as compression from "compression";  // compresses requests;
import * as bodyParser from "body-parser";
import * as lusca from "lusca";
import * as dotenv from "dotenv";
import * as path from "path";
import * as bluebird from "bluebird";

// Load environment variables from .env file, where API keys and passwords are configured
dotenv.config({ path: ".env.example" });

// Controllers (route handlers)
import * as homeController from "./controllers/home";

// Create Express server
const app = express();


// Express configuration
app.set("port", process.env.PORT || 3000);
app.set("views", path.join(__dirname, "../views"));
app.set("view engine", "pug");
app.use(compression());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(lusca.xframe("SAMEORIGIN"));
app.use(lusca.xssProtection(true));

app.use(express.static(path.join(__dirname, "public"), { maxAge: 31557600000 }));

/**
 * Primary app routes.
 */
app.get("/", homeController.index);

app.get('/*', (req, res) => {
  res.redirect('/')
})


module.exports = app;