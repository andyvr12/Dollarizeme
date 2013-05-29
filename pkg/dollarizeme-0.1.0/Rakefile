require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('dollarizeme', '0.1.0') do |p|
  p.description     = "Convert the value to official dollar quote in Argentina"
  p.url             = "http://github.com/ekalber/dollarizeme"
  p.author          = "Evaldo Kalbermatter"
  p.email           = "ekalber@gmail.com"
  p.ignore_pattern  = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }