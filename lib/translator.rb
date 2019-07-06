require "pry"

require "yaml"


def load_library(file_path)
  result = {"get_meaning" => {}, "get_emoticon" => {}}
  library = YAML.load_file(file_path)
  library.each do |meaning, emoticons|
    emoticons.each do |english, japanese|
    result["get_meaning"][emoticons[1]] = meaning
    result["get_emoticon"][emoticons[0]] = emoticons[1]
    end
  end
  result
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
    if 
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
end