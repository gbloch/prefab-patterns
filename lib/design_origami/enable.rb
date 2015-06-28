require "fileutils"

module DesignOrigami
  class Enable
    def initialize(feature)
      @feature = feature
    end

    def enable
      self.send(@feature)
    end

    private

    def konacha
      create_template_dir
      create_spec_helper
    end

    def create_template_dir
      directory_name = File.join("spec", "javascripts", "templates")
      FileUtils.mkdir_p(directory_name)
    end

    def create_spec_helper
      create_spec_helper_dir
      file_name = File.join("spec", "javascripts", "spec_helper.coffee")

      open(file_name, "w+") do |file|
        file.write(spec_helper_file_contents)
      end
    end

    def create_spec_helper_dir
      directory_name = File.join("spec", "javascripts")
      FileUtils.mkdir_p(directory_name)
    end

    def spec_helper_file_contents
      "#= require_tree ./templates"
    end
  end
end
