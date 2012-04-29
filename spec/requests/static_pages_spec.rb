require 'spec_helper'

  describe "StaticPages" do
    
    subject { page }
    
    describe "Home page" do
      before { visit root_path }
      
      it { should have_selector('h1', :text => 'Originate China HR Tracker') }
      it { should have_selector('title', 
                                  :text => "Originate China HR Tracker") }
      it { should_not have_selector('title', 
                                      :text => "| Home") }
    end
  
    describe "About page" do
      before {visit about_path}
      
      it{ should have_selector('h2', :text => "About Originate China's HR Tracker") }      
      it { should have_selector('title', 
                                   :text => "Originate China HR Tracker | About") }
    end
  
end
