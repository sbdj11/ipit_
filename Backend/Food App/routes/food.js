import express from 'express'
import {
  getAllFood,
  getFoodByCategoryId,
  getFoodCategory,
} from '../helper/getFoods.js'

const router = express.Router()

router.get('/all', async (req, res) => {
  const data = await getAllFood()
  res.send(data)
})
router.get('/category', async (req, res) => {
  const data = await getFoodCategory()
  res.send(data)
})
router.get('/category/:id', async (req, res) => {
  const data = await getFoodByCategoryId(req.params.id)
  res.send(data)
})
export default router
