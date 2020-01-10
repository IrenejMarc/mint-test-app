enum Page {
  Login
  Register
  Root
}

routes {
  /login    { Router.go(Page::Login,    "/login") }
  /register { Router.go(Page::Register, "/register") }
  /         { Router.go(Page::Root,     "/root") }
}
