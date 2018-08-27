#!/usr/bin/env ruby

# file: requestor.rb

require 'open-uri'


class Requestor

  class RequireX

    def initialize(url, debug=false)

      @url = url.sub(/\/$/,'\0') 
      @code = []
      @debug = debug

    end

    def code()
      @code.join("\n\n")
    end

    def require(name)

      url = "%s/%s.rb" % [@url, name]
      puts 'RequireX url: ' + url.inspect if @debug
      @code << open(url, 'UserAgent' => 'Ruby-Requestor').read

    end
  end

  def self.read(url, debug: false)
    
    req = RequireX.new(url.sub(/^(?!http)/,'http://'), debug)
    yield(req)
    req.code

  end

end
