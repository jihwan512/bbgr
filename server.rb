require 'sinatra'
require "sinatra/activerecord"
# class Post < ActiveRecord::Base
# end
class Article < ActiveRecord::Base
end
get '/' do
	# p = Posts.new
	# p.name = "hi"
	# p.save
	puts "aaaa"
	a = Article.new
	a.title = "라fff"
	a.save
	"hello"
end

get '/view' do
	p = Article.all
	"#{p.count},#{p.last}"
end