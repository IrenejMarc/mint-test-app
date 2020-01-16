component Input {
  property type : String = "text"
  property label : String = ""
  property value : String = ""
  property placeholder : String = ""

  property onChange : Function(String, Promise(Never, Void)) =
    (value : String) : Promise(Never, Void) { next {  } }

  fun onInput(event : Html.Event) : Promise(Never, Void) {
    onChange(Dom.getValue(event.target))
  }

  fun render : Html {
    <label>
      <{ label }>
      <input type={type} placeholder={placeholder} onInput={onInput} />
    </label>
  }
}
