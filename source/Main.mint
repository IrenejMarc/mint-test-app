component Main {
  connect Router exposing { page }

  fun render : Html {
    <Layout>
      <main class="main">
        case (page) {
          Page::Login    => <Pages.Login />
          Page::Register => <div />
          Page::Root     => <Pages.Root />
        }
      </main>
    </Layout>
  }
}
