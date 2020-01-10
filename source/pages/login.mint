component Pages.Login {
  property email : String = ""
  property password : String = ""
  property errorMessage : String = ""

  fun login(event : Html.Event) : void {
    try {
      Html.Event.preventDefault(event)

      BROKEN
      Http.post("/login")
        |> Http.jsonBody(encode {
            email = emailInput,
            password = passwordInput
          })
        |> Http.send()

      void
    }
  }

  fun render : Html {
    <form class="pure-form pure-form-stacked" onSubmit={login}>
      <fieldset>
        <legend>"Login"</legend>
      </fieldset>

      <Input as emailInput type="email" label="E-Mail" placeholder="E-Mail" />
      <Input as passwordInput type="password" label="Password" placeholder="Password" />

      <input class="pure-button pure-button-primary" type="submit" value="Log in" />
    </form>
  }
}
