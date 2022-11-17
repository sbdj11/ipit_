import db from '../config/db.js'

const getResult = async (sql) => {
  const [foods, _] = await db.execute(sql)
  return foods
}
const getAllFood = async () => {
  const sql = 'SELECT * from food'
  const data = await getResult(sql)
  return data
}

const getFoodCategory = async () => {
  const sql = 'SELECT * from category'
  const data = await getResult(sql)
  return data
}

const getFoodByCategoryId = async (id) => {
  const sql = `SELECT * from food WHERE category_id=${id}`
  return await getResult(sql)
}

export { getAllFood, getFoodByCategoryId, getFoodCategory }
