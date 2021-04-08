import api from "./apiConfig"

export const getAllCharacters = async () => {
  const resp = await api.get("/characters")
  return resp.data
}