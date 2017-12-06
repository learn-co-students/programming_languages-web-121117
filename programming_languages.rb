# :language => {
#  :type => ""
#  :style => []
# }

require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |styl, groups|
    groups.each do |language, types|
      if new_hash[language] == nil
        new_hash[language] = {type: languages[styl][language][:type], style: [styl]}
      else
        new_hash[language][:style] << styl
      end
    end
  end
  new_hash
end
