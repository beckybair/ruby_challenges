# Blog.rb

#Hmm, shouldn’t you be practicing inheritance? Create a parent class called something like ‘Blog’, that will keep track of how many blog posts you have created, and what to do with them.

#Let’s create a variable that will count our blog posts, starting at 0, and a method that will increment with each new blog post created and appended to our array of posts. Should this be an instance variable or a class variable? In what class should this counter be?

#Create a ‘publish’ method that will output all your blog posts to the terminal Would that be a class or instance method?
class Blog
	@@tot_blog_posts = []
	@@num_blog_posts = 0
	
	def self.all
		@@tot_blog_posts
	end
	
	def self.add(total)
		@@tot_blog_posts << total
		@@num_blog_posts += 1
	end
	
	def self.publish
		@@tot_blog_posts.each do |post|
			puts "Title:\n #{post.title}"
			puts "Content:\n #{post.content}"
			puts "Publish Date:\n #{post.pubdt}"
			puts "Author:\n #{post.author}"
			end
	end
end


#Create a class that will be the blueprint for each ‘BlogPost’ object. This class should set a title, content, a publish date, and maybe even an author for each NEW post. You may want to do this by modifying the initialize method OR you may want you craft your own method, with all the special behaviour in it.

#Save all blog posts in an array or a hash (you learned about these in lesson 7), in the parent class. Experiment with both. Push every new blog post into said array. Look up ‘Array’ methods in ruby to figure out how this might be possible.
class BlogPost < Blog
	def self.create
		post = new
		puts "Your Blog Post Title:"
		post.title = gets.chomp
		puts "Your Blog Content:"
		post.content = gets.chomp
		puts "Your Name:"
		post.author = gets.chomp
		post.pubdt = Time.now
		post.save

		#Use logic to create a prompt saying “do you want to create another blog post? [Y/N]”. If you hit Y the script will run through the questions to add content. If you hit N, you will stop entering content.
		puts "Would you like to create another post? [Y/N]"
		create if gets.chomp.downcase =='y'
	end
	
	def title
		@title
	end	 
	def title=(title) # a setter method always takes an argument
		@title = title # don't forget to set the instance variable
	end
	 
	def content
		@content
	end	 
	def content=(content)
		@content = content
	end
	 
	def pubdt
		@pubdt
	end
	def pubdt=(pubdt)
		@pubdt = pubdt
	end
	 
	#Make it so that blog posts can have authors
	def author
		@author
	end
	def author= (author)
		@author= author
	end

	def save
		BlogPost.add(self)
	end
	
end

BlogPost.create
tot_blog_posts = BlogPost.all
puts tot_blog_posts.inspect
BlogPost.publish