enum Api.Result(result) {
  Error(Map(String, Array(String)))
  Ok(result)
}

module Api {
  fun post(url : String, data : Object) : Promise(Never, Api.Result(result)) {
    Promise.resolve(Api.Result::Ok(response))
  } where {
    response =
      Http.post(url)
        |> Http.header("Content-Type", "application/json")
        |> Http.jsonBody(data)
        |> Http.send()
  }

  fun errorStatus(key : String, value : String) : Api.Result(result) {
    Api.Result::Error(error)
  } where {
    error =
      Map.empty()
        |> Map.set(key, [value])
  }
}
