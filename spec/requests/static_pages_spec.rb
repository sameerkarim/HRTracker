require 'spec_helper'

  describe "StaticPages" do
    
    describe "Home page" do
      
      it "should have the h1 'Originate China HR Tracker'" do
        visit '/static_pages/home'
        page.should have_selector('h1', :text => 'Originate China HR Tracker')
      end
    
      it "should have the base title" do
        visit '/static_pages/home'
        page.should have_selector('title', 
                                  :text => "Originate China HR Tracker")
      end
      
      it "should not have a custom page title" do
        visit '/static_pages/home'
        page.should_not have_selector('title', 
                                      :text => "| Home")
      end
    end
  
    describe "About page" do
      
      it "should have the content 'About Originate China\'s HR Tracker'" do
        visit '/static_pages/about'
        page.should have_selector('h1', :text => "About Originate China's HR Tracker")        
      end
      
      it "should have the title 'About'" do
         visit '/static_pages/about'
         page.should have_selector('title', 
                                   :text => "Originate China HR Tracker | About")
      end
    end
  
  
end
