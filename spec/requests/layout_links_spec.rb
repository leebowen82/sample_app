require 'spec_helper'

describe "LayoutLinks" do
	it "should have a Home page at '/'" do
		get '/'
		response.should have_selector('title', :content => "Ruby on Rails Tutorial Sample App | Home")
	end

	it "should have a Contact page at '/contact'" do
		get '/contact'
		response.should have_selector('title', :content => "Ruby on Rails Tutorial Sample App | Contact")
	end
	
	it "should have a About page at '/about'" do
		get '/about'
		response.should have_selector('title', :content => "Ruby on Rails Tutorial Sample App | About")
	end
	
	it "should have a Help page at '/help'" do
		get '/help'
		response.should have_selector('title', :content => "Ruby on Rails Tutorial Sample App | Help")
	end
end
