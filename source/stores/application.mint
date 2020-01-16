enum UserStatus {
  LoggedIn(String)
  LoggedOut
}

store Application {
  state userStatus : UserStatus = UserStatus::LoggedOut

  fun login(token : String) : Promise(Never, Void) {
    sequence {
      next { userStatus = UserStatus::LoggedIn(token) }
      Router.go(Page::Home, "/home")
    }
  }
}
