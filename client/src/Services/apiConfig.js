import axios from 'axios'

//const baseUrl = process.env.NODE_ENV === 'development' ? 'http://localhost:3000' : 'http://localhost:3000'
const baseUrl = 'http://localhost:3000'

const api = axios.create({
  baseUrl: baseUrl
})

export default api