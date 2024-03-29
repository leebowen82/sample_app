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
	
	it "should have a Sign up page at '/signup'" do
		get '/signup'
		response.should have_selector('title', :content => "Sign Up")
	end
	
	it "should have the right links on the layout" do
		visit root_path
		response.should have_selector('title', :content => "Home")
		click_link "About"
		response.should have_selector('title', :content => "About")
		click_link "Contact"
		response.should have_selector('title', :content => "Contact")
		click_link "Home"
		response.should have_selector('title', :content => "Home")
		click_link "Sign Up Now!"
		response.should have_selector('title', :content => "Sign Up")
		response.should have_selector('a[href="/"]>img')
	end
	
end
