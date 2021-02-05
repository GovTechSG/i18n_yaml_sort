require 'i18n_yaml_sort/version'
require 'i18n_yaml_sort/hash'
require 'i18n_yaml_sort/railtie'
require 'yaml'

module I18nYamlSort
  class Sorter # :nodoc:
    UNWANTED_CHARS = ["---\n",
                      '!ruby/hash:ActiveSupport::HashWithIndifferentAccess'].freeze

    def initialize(yml_file)
      @yml_file = yml_file
    end

    def sort
      hash = HashWithIndifferentAccess.new(YAML.load(File.read(@yml_file)))
      # http://yaml4r.sourceforge.net/doc/page/examples.htm
      clean_yaml(hash.sort_by_key(true).to_yaml(line_width: -1))
    end

    private

    def clean_yaml(yaml)
      UNWANTED_CHARS.each do |c|
        yaml = yaml.gsub(c, '')
      end

      yaml
    end
  end
end
