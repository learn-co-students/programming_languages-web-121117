require "pry"

#hash_key puts oo and functional
#hash_data puts the whole hash of the lanuages and their type
def reformat_languages(languages)
new_hash = Hash.new
# another_hash = Hash.new
languages.each do |hash_key, hash_data|
  hash_data.each do |language_name, types|
     new_hash[language_name] = types
     new_hash[language_name][:style] = [hash_key]
    end
    new_hash[:javascript][:style] << :oo
  end
  new_hash
end
