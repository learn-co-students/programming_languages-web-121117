require 'pry'

def reformat_languages(languages_by_style)
  hash = Hash.new
  languages_by_style.each do |styles|
    styles.each_with_index do |style, i|
      styles[1].each do |language, types|
        hash[language] = {}
          types.each do |type, value|
          hash[language] = {type => value}
          hash[language][:style] = [styles[0]]
          if language == :javascript
            hash[language][:style] = languages_by_style.keys
          end
        end
      end
    end
  end
  return hash
end
