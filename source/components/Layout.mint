component Layout {
  property children : Array(Html) = []

  style app-wrapper {
  }

  style content {
    display: flex;
    align-items: center;
    justify-content: center;
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
