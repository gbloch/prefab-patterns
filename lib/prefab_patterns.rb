require "rails"
require "prefab_patterns/version"
require "prefab_patterns/engine"
require "prefab_patterns/import_pattern"
require "prefab_patterns/render_pattern"
require "prefab_patterns/styleguide"

require "prefab_patterns/railtie" if defined?(Rails)

FILE_PATH = "https://raw.githubusercontent.com/jasonramirez/design-takeout/master/"

module PrefabPatterns
end
