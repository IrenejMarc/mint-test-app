component Link {
  property href : String = "#"
  property children : Array(Html) = []
  property classNames : String = ""

  connect Router exposing { path }

  style link {
    color: pink;

    if (active) {
      font-weight: bold;
    }
  }

  get active : Bool {
    Router.path == href
  }

  fun render : Html {
    <a::link href={href} class={classNames}>
      <{ children }>
    </a>
  }
}
