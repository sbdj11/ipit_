import express from 'express'
import bodyParser from 'body-parser'
import foodRoutes from './routes/food.js'

const app = express()
const PORT = 5000

app.use('/images', express.static('images'))
app.use(bodyParser.json())

app.use('/foods', foodRoutes)

app.get('/', (req, res) => {
  console.log('TEST')
  res.send('Hello From Home Page')
})

app.listen(PORT, () =>
  console.log(`Server running on port: http://localhost:${PORT}`),
)
