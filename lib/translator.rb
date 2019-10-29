# require modules here
require "yaml"

def load_library(file)
  emotes = YAML.load_file(file)
  new_hash = {}
  new_hash[:get_meaning] = {}
  new_hash[:get_emoticon] = {}
  
  
  emotes.each do |key, value|
    #puts "#{key} and #{value}"
    new_key = value[1]
    n_hash = {new_key=>"a"}
    new_hash[:get_meaning].merge!()
  end 
  
  puts "new hash"
  puts new_hash 
  return new_hash 
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end