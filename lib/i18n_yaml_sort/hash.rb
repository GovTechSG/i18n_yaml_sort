#!/usr/bin/ruby
# @Author: Karuppasamy M
# @Date:   2016-03-10 23:37:09
# @Last Modified by:   Karuppasamy M
# @Last Modified time: 2016-03-14 12:19:03

class Hash # :nodoc:
  def sort_by_key(recursive = false, &block)
    keys.sort(&block).reduce({}) do |seed, key|
      seed[key] = self[key]
      if recursive && seed[key].is_a?(Hash)
        seed[key] = seed[key].sort_by_key(true, &block)
      end
      seed
    end
  end
end
