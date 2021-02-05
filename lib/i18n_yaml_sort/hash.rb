class Hash # :nodoc:
  def sort_by_key(recursive = false)
    keys.sort { |x, y| x.to_s <=> y.to_s }.reduce({}) do |seed, key|
      seed[key] = self[key]
      seed[key] = seed[key].sort_by_key(true) if recursive && seed[key].is_a?(Hash)

      seed
    end
  end
end
