component Main {
  connect Router exposing { page }

  fun render : Html {
    <Layout>
      case (page) {
        Page::Login    => <Pages.Login />
        Page::Register => <Pages.Register />
        Page::Home     => <Pages.Home />
        Page::Root     => <Pages.Root />
      }
    </Layout>
  }
}
