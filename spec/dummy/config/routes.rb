Rails.application.routes.draw do
  mount PrefabPatterns::Engine, at: "/styleguide"

  root "welcome#index"
end
