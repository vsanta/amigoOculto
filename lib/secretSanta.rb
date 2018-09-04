#!/usr/bin/env ruby

require_relative './draw'
require_relative './util/loader'

draw_results = Draw.new(Utils.load_participants).start

draw_results.each do |result|
  print "Staring Secret Santa draw \n"
  result.email_results
  print "Done! Results were sent out! \n"
end
