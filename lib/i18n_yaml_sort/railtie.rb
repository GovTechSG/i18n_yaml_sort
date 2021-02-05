module I18nYamlSort # :nodoc:
  class Railtie < Rails::Railtie # :nodoc:
    rake_tasks do
      load 'tasks/i18n_yaml_sort.rake'
    end
  end if defined? Rails::Railtie
end
