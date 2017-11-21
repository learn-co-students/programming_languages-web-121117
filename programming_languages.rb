def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, lang|
    lang.map do |k, v|
      new_hash[k]= v
      new_hash[k][:style] = [type]
    end
  end
  new_hash[:javascript][:style].unshift(:oo)
  new_hash
end
