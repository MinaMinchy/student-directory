#Quine

f = File.open __FILE__
f.each_line do |line|
  puts line
end
f.close
