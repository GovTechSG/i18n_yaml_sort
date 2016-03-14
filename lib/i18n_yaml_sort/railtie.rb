#!/usr/bin/ruby
# @Author: Karuppasamy M
# @Date:   2016-03-10 08:23:53
# @Last Modified by:   Karuppasamy M
# @Last Modified time: 2016-03-14 12:19:13

module I18nYamlSort # :nodoc:
  class Railtie < Rails::Railtie # :nodoc:
    rake_tasks do
      load 'tasks/i18n_yaml_sort.rake'
    end
  end if defined? Rails::Railtie
end
