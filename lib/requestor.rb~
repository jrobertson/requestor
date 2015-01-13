#!/usr/bin/env ruby

# file: requestor.rb

require 'open-uri'
require 'net/http'
require 'rexml/document'

class Requestor

  class Filex
    include REXML

    attr_reader :code

    def initialize(url) 
      @url = url.sub(/[^\/]$/,'\0/') 
      @file_list = false

      def url.file_list?()
        pattern = "<type>ruby_files</type>"

        @file_list = false
      
        url = URI.parse(self)
        code = Net::HTTP.start(url.host, url.port) do |http| 
          http.head(url.request_uri).code 
        end

        if code == '200' then
          buffer = open(url, 'UserAgent' => 'Ruby-Requestor'){|f| f.read}
          @file_list = true if buffer[/#{pattern}/i]
        end
    
      end

      @names = []
      @code = []
      
      if url.file_list? then
        @file_list = true
        @doc = Document.new(open(url, 'UserAgent' => 'Ruby-REXML'){|f| f.read})  
      end
    end

    def require(file)

      unless @names.include? file then
        if @file_list then
          url = XPath.first(@doc.root, "records/file[name='#{file}']/url/text()").to_s
        else
          file += '.rb' unless file[/\.rb$/]
          url = @url + file
        end
        @names << file 
        @code << open(url, 'UserAgent' => 'Ruby-Requestor'){|f| f.read}
      end
    end
    
  end

  def self.read(url)  

    @@filex = Filex.new(url)
    yield(@@filex)
    @@filex.code.join("\n")
  end

end