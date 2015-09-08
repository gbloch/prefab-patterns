Rails.application.routes.draw do
  mount PrefabPatterns::Engine, at: "/styleguide"

  root "welcome#index"

  get "welcome/with_partial_in_same_directory",
    to: "welcome#with_partial_in_same_directory"
end
