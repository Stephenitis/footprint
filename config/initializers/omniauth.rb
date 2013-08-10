Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :moves, "inc30b3HX615uQbeOO17keT1BdCx2RIR", "N4I39dEqbvNLHgEezN0cro5NyzDMmUJGi0f58mgexgXzpGjedMK86p1A6KAlr06H", :scope => "activity"
end