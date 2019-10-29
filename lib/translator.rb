# require modules here
require "yaml"

def load_library(file)
  emotes = YAML.load_file(file)
  new_hash = {}
  new_hash[:get_meaning] = {}
  new_hash[:get_emoticon] = {}
  
  #JP emoticons 
  emotes.each do |key, value| #key = meaning, value = emoticon 
    new_key = value[1] #hardcoded 1 due to the library format 
    n_hash = {new_key=>"#{key}"}
    new_hash[:get_meaning].merge!(n_hash)
  end 
  
  #US emoticons 
  emotes.each do |meaning, emoticon|
    temp_hash = {emoticon[0]=>"#{meaning}"}
    new_hash[:get_emoticon].merge!(temp_hash)
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