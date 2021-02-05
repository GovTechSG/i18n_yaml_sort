require 'i18n_yaml_sort'

namespace :i18n do
  desc 'Sort all i18n yaml files in alphabetic order.'
  task :sort, [:path_to_yaml_file] => :environment do |_, args|
    locales = args[:path_to_yaml_file] ||
              Dir.glob("#{Rails.root}/config/locales/**/*.yml")

    locales.each do |locale_path|
      sorted_yaml_file = File.open(locale_path) do |yaml_file|
        I18nYamlSort::Sorter.new(yaml_file).sort
      end

      File.open(locale_path, 'w') do |yaml_file|
        yaml_file << sorted_yaml_file
      end
    end
  end
end
