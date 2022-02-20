#!/usr/bin/env ruby

# file: requestor.rb

require 'rxfreader'


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

      url = "%s/%s" % [@url, name.sub(/\.rb$|$/,'.rb')]
      puts 'RequireX url: ' + url.inspect if @debug
      @code << RXFReader.read(url).first

    end
  end

  def self.read(url, debug: false)

    req = RequireX.new(url.sub(/^(?!http|dfs)/,'http://'), debug)
    yield(req)
    req.code

  end

end
