require "pry"

def reformat_languages(languages)
  reformatted_languages = {}
  languages.each{|key1, value|
    value.each{|key2,value|
      if reformatted_languages[key2] == nil
        reformatted_languages[key2] = value
        reformatted_languages[key2][:style] = []
        reformatted_languages[key2][:style].push(key1)
      else
        reformatted_languages[key2][:style].push(key1)
      end
      }
    }
  reformatted_languages
end
