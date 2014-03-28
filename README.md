# Introducing the Requestor gem

    require 'requestor'

    code = Requestor.read('http://rorbuilder.info/ruby/') do |x|
      x.require 'helloworld'
    end

    eval code

    HelloWorld.new
    #=&gt; hello world

The Requestor gem loads ruby source code from the web instead of from the local file system.

* advantages: quicker than installing gems locally, the source is tamper-proof, no need to reinstall a gem since the latest gem is automatically downloaded
* disadvantages: gems won't run without a web server, it's harder to maintain version control

## Resources 

* [jrobertson/requestor](https://github.com/jrobertson/requestor)

*update: 17-Feb-2011 @ 8:57pm* 
The url can also point to a dynarex file containing links to ruby files. The schema for the dynarex file is 'files/file(name,url)'. The summary node must include ruby_files

