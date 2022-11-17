const foodsContainer = document.getElementById('foodContainer')
function openclosedropdown() {
  let filter_musk = document.getElementById('filter_musk')
  console.log('hello')
  if (filter_musk.classList.contains('h-0')) {
    filter_musk.classList.remove('h-0')
  } else {
    filter_musk.classList.add('h-0')
  }
}
const getCategoryName = (id) => {
  let name = ''
  switch (id) {
    case 1:
      name = 'Entree'
      break
    case 2:
      name = 'Main'
      break
    case 3:
      name = 'Dessert'
      break
  }
  return name
}
const api_link = `http://localhost:5000/foods`
const get_foods_all = () => {
  var requestOptions = {
    method: 'GET',
    headers: {
      'Content-Type': 'application/json',
    },
  }
  fetch(`${api_link}/all`, requestOptions)
    .then((result) => {
      return result.json()
    })
    .then((res) => {
      let innerData = ''
      console.log(res.data)
      res.data.forEach((element) => {
        console.log(element)
        innerData += `<div class="card">
        <div class="f_img" style="background-image: url(${`http://localhost:5000/images/${element.img_link}`});"></div>
        
        <div class="right">
            <h5>${element.name}</h5>
            <p class="f_type"><span>Type: </span>${getCategoryName(
              element.category_id,
            )}</p>
            <p class="f_price"><span>Price: </span>${element.price}</p>
            <p class="allergens"><span>Allergens: </span> ${
              (element.vegan == 1 ? 'Vegan ' : '') +
              (element.gluten_free == 1 ? 'Gluten Free ' : '')
            }</p>
            <p><span>Rating:</span> ${element.rating}</p>
        </div>
    </div>`
      })
      console.log(innerData)
      foodsContainer.innerHTML = innerData
    })
    .catch((error) => {
      alert(error)
    })
}
get_foods_all()
