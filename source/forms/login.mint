store Forms.Login {
  state email : String = ""
  state password : String = ""
  state errors : Map(String, Array(String)) = Map.empty()

  fun setEmail(val : String) : void {
    next { email = val }
  }

  fun setPassword(val : String) : void {
    next { password = val }
  }

  fun submit(event : Html.Event) : Promise(Never, Void) {
    sequence {
      Html.Event.preventDefault(event)

      result = Api.User.login({
        email = email,
        password = password
      })

      case (result) {
        Api.Result::Ok result => Application.login(result.token)
        Api.Result::Error errors => next { errors = errors }
      }
    }
  }
}
