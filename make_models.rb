# Instantiate a file object
file = File.new('makes_models.csv', 'w') 

file.puts '"Make:Chevrolet Model:Malibu"'
file.puts '"Make:Ford Model:Mustang"'
file.puts '"Make:Ford Model:Taurus"'
file.puts '"Make:Chevrolet Model:Cobalt"'

file.close

file = File.open('makes_models.csv', 'r') 

if file = File.readlines('makes_models.csv') 
  
  puts file

else
  puts "Unable to open file!"
end

File.open('makes_models.csv', 'r') do |file|
  lines = 0
  file.each_line do |line|
    lines += 1
  end
  puts "Lines Processed: #{lines}"
end


size = File.open('makes_models.csv', 'r').size
print "File Size:" 
puts size 
