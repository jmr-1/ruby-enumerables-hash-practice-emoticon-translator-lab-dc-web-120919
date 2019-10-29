# require modules here
require "yaml"

def load_library(file)
  emotes = YAML.load_file(file)
  new_hash = {}
  new_hash[:get_meaning] = {}
  new_hash[:get_emoticon] = {}
  
  #JP emoticons 
  emotes.each do |meaning, emoticon| 
    
    n_hash = {emoticon[1]=>"#{meaning}"}
    new_hash[:get_meaning].merge!(n_hash)
  end 
  
  #US emoticons 
  emotes.each do |meaning, emoticon|
    
    temp_hash = {emoticon[0]=>"#{emoticon[1]}"} #points to JP equivalent 
    new_hash[:get_emoticon].merge!(temp_hash)
  end 
  
  puts "new hash"
  puts new_hash 
  return new_hash 
end

def get_japanese_emoticon(file_path, emoticon)
  
  translation_hash = load_library(file_path)
  jp_equivalent = translation_hash[:get_emoticon][emoticon] 
  
  if jp_equivalent == nil 
    jp_equivalent = "Sorry, that emoticon was not found"
  end 
  return jp_equivalent
end

def get_english_meaning(file_path, emoticon)
  
  translation_hash = load_library(file_path)
  english_equivalent = translation_hash[:get_meaning][emoticon]
  
  if english_equivalent == nil
    english_equivalent = "Sorry, that emoticon was not found"
  end 
  return english_equivalent

end