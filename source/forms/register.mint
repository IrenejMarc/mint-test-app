store Forms.Register {
  state email : String = ""
  state password : String = ""

  fun setEmail(val : String) : void {
    next { email = val }
  }

  fun setPassword(val : String) : void {
    next { password = val }
  }

  fun submit(event : Html.Event) : Promise(Never, Api.Result(result)) {
    sequence {
      Html.Event.preventDefault(event)

      Api.User.register({
        email = email,
        password = password,
        passwordConfirmation = password
      })
    }
  }
}
