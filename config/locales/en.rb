{
  en: {
    time: {
      formats: {
        default: lambda { |time, options| time.strftime("%b #{ActiveSupport::Inflector.ordinalize(time.day)}, %l:%M%P") }
      }
    }
  }
}
