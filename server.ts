import { createRequestHandler } from "@remix-run/architect";
import * as build from "@remix-run/dev/server-build";
import {installGlobals} from '@remix-run/node'
if (process.env.NODE_ENV !== "production") {
  require("./mocks");
}

installGlobals()
export const handler = createRequestHandler({
  build,
  mode: process.env.NODE_ENV,
});
