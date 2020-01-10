component Input {
  property type : String = "text"
  property label : String = ""
  property placeholder : String = ""

  get value : String {
    case (input) {
      Maybe::Just element => Dom.getValue(element)
      Maybe::Nothing      => ""
    }
  }

  fun render : Html {
    <label>
      <{ label }>
      <input as input type={type} placeholder={placeholder} />
    </label>
  }
}
