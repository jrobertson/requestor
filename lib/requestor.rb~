#!/usr/bin/ruby

# file: requestor.rb

require 'open-uri'

class Requestor

  class Filex

    attr_reader :code

    def initialize(url)
      @url = url.sub(/[^\/]$/,'\0/') 
      @names = []
      @code = []
    end

    def require(file)
      file += '.rb' unless file[/\.rb$/]
      unless @names.include? file then
        @names << file 
        @code << open(@url + file, 'UserAgent' => 'Ruby-Requestor v0.1').read
      end
    end
    
  end

  def self.read(url)  

    @@filex = Filex.new(url)
    yield(@@filex)
    @@filex.code.join("\n")
  end

end