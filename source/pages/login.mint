component Pages.Login {
  connect Forms.Login exposing { email, password, setEmail, setPassword, submit }

  fun render : Html {
    <form class="pure-form pure-form-stacked" onSubmit={submit}>
      <fieldset>
        <legend>"Login"</legend>
      </fieldset>

      <Input
        type="text"
        label="E-Mail"
        placeholder="E-Mail"
        value={email}
        onChange={setEmail}
      />

      <Input
        type="password"
        label="Password"
        placeholder="Password"
        value={password}
        onChange={setPassword}
      />

      <input class="pure-button pure-button-primary" type="submit" value="Log in" />
    </form>
  }
}
