component Layout {
  property children : Array(Html) = []

  style app-wrapper {
  }

  style content {
  }

  fun render : Html {
    <div::app-wrapper>
      <Layout.Header />

      <div::content>
        <{ children }>
      </div>
    </div>
  }
}
