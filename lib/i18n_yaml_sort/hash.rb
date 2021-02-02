#!/usr/bin/ruby
# @Author: Karuppasamy M
# @Date:   2016-03-10 23:37:09
# @Last Modified by:   Lim Yao Jie
# @Last Modified time: 2021-02-02 14:36

class Hash # :nodoc:
  def sort_by_key(recursive = false)
    keys.sort { |x, y| x.to_s <=> y.to_s }.reduce({}) do |seed, key|
      seed[key] = self[key]
      seed[key] = seed[key].sort_by_key(true) if recursive && seed[key].is_a?(Hash)

      seed
    end
  end
end
