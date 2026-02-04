"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
var _a;
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
require("dotenv/config");
// import router from './router'
// import { errorLogger, errorHandler, boomErrorHandler } from './errors'
const app = (0, express_1.default)();
const PORT = (_a = process.env.PORT) !== null && _a !== void 0 ? _a : 3000;
// router(app)
// app.use(errorLogger)
// app.use(boomErrorHandler)
// app.use(errorHandler)
app.listen(PORT, () => {
    console.log(`[server] Running API on http://localhost:${PORT}`);
});
