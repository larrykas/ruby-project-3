# checks to see if the file exists and if it does prints file1.txt Does file exist? true
['file1.txt'].each { |f|
  printf "%s Does file exist? %s\n",f, File.file?(f) }
# Instantiate a file object
file = File.new('file1.txt', 'w') 

# Writes “Hello World” to the file created above
file.puts'"Hello World"'

# Always close the file at the end when you use File.new
file.close

# Reads the text file created above and prints it’s contents to the screen
file = File.new('file1.txt', 'a+') 

# if the mode(rights) of the file above is not read the following code will not be executed, returns an error
if file
# This outputs the first 20 characters of the content
   content = File.readlines('file1.txt') 
  puts content
else
  puts "Unable to open file!"
end

# On a new line, Appends the following to "Hello World"
puts "It's going to be a great day"

# Creates a new directory called “my_new_directory” if it doesn't already exist
if Dir.mkdir('my_new_directory') != nil
  
  puts "Yes! File created"
  
else
  
  puts "This File Already Exists"

end
