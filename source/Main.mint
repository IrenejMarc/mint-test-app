component Main {
  connect Router exposing { page }

  fun render : Html {
    <Layout>
      case (page) {
        Page::Login    => <Pages.Login />
        Page::Register => <div />
        Page::Root     => <Pages.Root />
      }
    </Layout>
  }
}
