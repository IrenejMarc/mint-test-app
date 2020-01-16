record UserRegistrationDetails {
  email : String,
  password : String,
  passwordConfirmation : String using "password_confirmation"
}

