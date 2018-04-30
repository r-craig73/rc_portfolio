require 'rails_helper'

describe "it edits an interest for the user" do
  it "gives error when not signed in" do
    user = User.create!(:id => 20, :email => "ron.craig@comcast.net", :admin => true, :password => "epicodus", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 1)
    interest = Interest.create!(:id => 14, :heading => 'Flying a kite', :body => 'Enjoy flying a kite during my spare time', :user_id => 20)
    visit edit_interest_url(interest.id)
    expect(page).to have_content 'Log in'
  end
end
