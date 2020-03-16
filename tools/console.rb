require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

bloomberg = VentureCapitalist.new(“Bloomberg”, 65_000_000_000)
marc = VentureCapitalist.new(“Marc”, 500_000_000)
pollack = VentureCapitalist.new(“Pollack”, 2_000_000_000)
VentureCapitalist.tres_commas_club

binding.pry
0 #leave this here to ensure binding.pry isn't the last line