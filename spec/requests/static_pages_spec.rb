require 'spec_helper'

  describe "StaticPages" do
    
    describe "Home page" do
      
      it "should have the content 'Originate China HR Tracker'" do
        visit '/static_pages/home'
        page.should have_selector('h1', :text => 'Originate China HR Tracker')
      end
    
      it "should have the title 'Home'" do
        visit '/static_pages/home'
        page.should have_selector('title', 
                                  :text => "Originate China HR Tracker | Home")
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
