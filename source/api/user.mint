module Api.User {
  fun login(details : UserLoginDetails) : Promise(Never, Api.Result(Responses.UserLogin))  {
    Api.post("/api/login", encode { user = details })
  }

  fun register(details : UserRegistrationDetails) : Promise(Never, Api.Result(result)) {
    Api.post("/api/register", encode { user = details })
  }
}
