component Layout.Header {
  style right-menu {
    float: right;
  }

  fun render : Html {
    <div class="page-wrapper" id="app">
      <div class="header">
        <div class="pure-menu pure-menu-horizontal">
          <a class="pure-menu-heading" href="">"Zravian"</a>

          <ul class="pure-menu-list">
            <li class="pure-menu-item">
              <Link href="/" classNames="pure-menu-link">"Home"</Link>
            </li>
          </ul>

          <ul::right-menu class="pure-menu-list">
            <li class="pure-menu-item">
              <Link href="/login" classNames="pure-menu-link">"Login"</Link>
            </li>
            <li class="pure-menu-item">
              <Link href="/register" classNames="pure-menu-link">"Register"</Link>
            </li>
          </ul>
        </div>
      </div>
    </div>
  }
}
