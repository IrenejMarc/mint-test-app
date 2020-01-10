store Router {
  state page : Page = Page::Root
  state path : String = "/"

  fun go(page : Page, path : String) : void {
    sequence {
      next { page = page }
      next { path = path }
    }
  }
}
