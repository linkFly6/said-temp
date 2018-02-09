import { Request, Response } from "express";

/**
 * GET /
 * Home page.
 */
export let index = (req: Request, res: Response) => {
  res.render("home", {
    title: "听说 - 世界很大，风住过这里"
  });
};
