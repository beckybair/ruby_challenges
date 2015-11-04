# Magic 8-ball script!

require 'rubygems'
require 'twilio-ruby'

account_sid = "ACccd37e19afabc3da70e93fba294ff6a1"
auth_token = "7f3d6c334c41c6eea168837b92329430"
 
@client = Twilio::REST::Client.new(account_sid, auth_token)

puts "This is a Magic 8-ball.  What is your question?"
answer = gets.chomp 

puts "What is your cell number? (example: +12345678901 for US)"
cell = gets.chomp

#randomly generate a number and make it a string
the_reply = rand(1..20).to_s 

case the_reply
	when "1" 
		the_reply = "It is certain"
		puts the_reply
	when "2"
		the_reply = "It is decidedly so"
		puts the_reply
	when "3"
		the_reply = "Without a doubt"
		puts the_reply
	when "4" 
		the_reply = "Yes, definitely"
		puts the_reply
	when "5" 
		the_reply = "You may rely on it"
		puts the_reply
	when "6" 
		the_reply = "As I see it, yes"
		puts the_reply
	when "7" 
		the_reply = "Most likely"
		puts the_reply
	when "8" 
		the_reply = "Outlook good"
		puts the_reply
	when "9" 
		the_reply = "Yes"
		puts the_reply
	when "10" 
		the_reply = "Signs point to yes"
		puts the_reply
	when "11" 
		the_reply = "Reply hazy try again"
		puts the_reply
	when "12" 
		the_reply = "Ask again later"
		puts the_reply
	when "13" 
		the_reply = "Better not tell you now"
		puts the_reply
	when "14" 
		the_reply = "Cannot predict now"
		puts the_reply
	when "15" 
		the_reply = "Concentrate and ask again"
		puts the_reply
	when "16" 
		the_reply = "Don't count on it"
		puts the_reply
	when "17" 
		the_reply = "My reply is no"
		puts the_reply
	when "18" 
		the_reply = "My sources say no"
		puts the_reply
	when "19" 
		the_reply = "Outlook not so good"
		puts the_reply
	when "20" 
		the_reply = "Very doubtful" 
		puts the_reply
end

message = @client.account.messages.create(
  :from => "+16306350475", 
  :to => cell, 
  :body => "Magic 8-ball's says:  " + the_reply
)
puts message.to
