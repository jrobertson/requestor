#!/usr/bin/ruby

# file: requestor.rb

require 'open-uri'

class Requestor

  class Filex

    attr_reader :code

    def initialize(url)
      @url = url
      @code = []
    end

    def require(file)
      file += '.rb' unless file[/\.rb$/]
      buffer = open(@url + file, 'UserAgent' => 'Ruby-Requestor v0.1').read
      @code << buffer
    end
    
  end
  
  def self.read(url)  
    filex = Filex.new(url.sub(/[^\/]$/,'\0/'))
    yield(filex)
    filex.code.join("\n")
  end

end
