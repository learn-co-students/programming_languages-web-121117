require "pry"
def reformat_languages(arr)
  result = {}
  hold =[]
  arr.each do |key,value|
    value.each do |lang, type|
      result[lang] = type
    end
  end
  result.each do |lang,info|
    result[lang][:style] = []
    arr.each do |key, value|
      if value.has_key?(lang)
        result[lang][:style] << key
      end
    end
  end
end
