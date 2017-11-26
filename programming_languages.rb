# require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  new_hash = {}
    languages.each do |style,data|
      data.each do |language,type_value|
        type_value.each do |type_key,type_desc|
          if !new_hash.include?(language) 
            # binding.pry
            new_hash[language] = {type: type_desc, style: [style] }
          else new_hash[language][:style].push(style)
          end
        end
      end
    end
  new_hash
end

# reformat_languages(languages)
