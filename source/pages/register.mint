component Pages.Register {
  connect Forms.Register exposing { email, password, setEmail, setPassword, submit }

  fun render : Html {
    <form class="pure-form pure-form-stacked" onSubmit={submit}>
      <fieldset>
        <legend>"Register"</legend>
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

      <input class="pure-button pure-button-primary" type="submit" value="Register" />
    </form>
  }
}
