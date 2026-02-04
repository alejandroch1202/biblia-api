import express from 'express'
import 'dotenv/config'
// import router from './router'
import { errorLogger, errorHandler, boomErrorHandler } from './errors'

const app = express()
const PORT = process.env.PORT ?? 3000

// router(app)
app.use(errorLogger)
app.use(boomErrorHandler)
app.use(errorHandler)

app.listen(PORT, () => {
  console.log(`[server] Running API on http://localhost:${PORT}`)
})
