#!/usr/bin/env ruby

require './midispot'

if __FILE__ == $0
  App.run! bind: '192.168.0.2', :port => 4000
end