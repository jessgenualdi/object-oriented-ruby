# food =[]

# 5.times do 
#   puts "Enter your favorite food:"
#   food << gets.chomp
# end

# p food

# food.each do |item|
#   puts "I love #{item}" 
# end


# food.each_with_index do |item, i|
#   puts "#{i+1}. #{item}"
# end

# count = 0

# 10.times do 
#   puts count += 1
# end

# puts count

# result = 0 

# unless result
#   puts "hello"
# end

# sam = rand(20)
# sally = rand(10)
# french = rand(2)
# crepes = rand(2)
# puts sam
# puts sally
# puts french
# puts crepes

# if sam >= 10 && sally >= 5
#   puts "Sam and Sally are dating!"
#   if french == 1 && crepes == 1
#     puts "Sam and Sally are getting married!"  
#   end
# end

# accounts = []

# 2.times do 
#   person = Hash.new
#   puts "What is your first name?"
#   person[:first_name] = gets.chomp
#   puts "What is your last name?"
#   person[:last_name] = gets.chomp
#   puts "What is your email"
#   person[:email] = gets.chomp
#   person[:account_number] = rand(1000000000..9999999999)
#   accounts << person
# end

# p accounts

# accounts.each do |person|
#   puts "First Name: #{person[:first_name]}" 
#   puts "Last Name: #{person[:last_name]}"
#   puts "Email: #{person[:email]}"
#   puts "ACCT: #{person[:account_number]}"
# end

cohort = ["Ari", "Caroline", "John F", "David", "John E", "Jack", "Danica", "Stephen", "Jessica", "Carolina", "Karen", "Ramiro", "Matt"]

cohort = cohort.shuffle
i = 0

# for i in 0..cohort.length
while i < (cohort.length - 1)  
  if cohort.length - i == 3
    puts "Group: #{cohort[i]} and #{cohort[i + 1]} and #{cohort[i + 2]}"
  end
  puts "Group: #{cohort[i]} and #{cohort[i + 2]}"
  i += 2
end









