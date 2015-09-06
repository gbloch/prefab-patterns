require "prefab_patterns/styleguide"

module PrefabPatterns
  class StyleguideController < ApplicationController
    def index
      @patterns = PrefabPatterns::Styleguide.new.all_patterns
    end
  end
end
