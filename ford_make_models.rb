# Instantiate a file object
automobiles = {"Chevrolet:"=>["Malibu","Cobalt"], "Ford:"=>["Mustang","Taurus"]}

# Remove any items from the hash that are not a “Ford” make
 automobiles.delete_if {|key, value| key == "Chevrolet:"}

# Creates a file (called fords.csv) 
file = File.new('fords.csv', 'w')

# writes the data for the Ford only hash into the file created above
file.puts automobiles
