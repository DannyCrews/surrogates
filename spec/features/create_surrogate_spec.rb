require 'spec_helper'

describe "Creating a new surrogate" do 
  it "saves the surrogate and shows the new surrogate's details" do    
    visit surrogates_url
    
    click_link 'Add New Surrogate'
    
    expect(current_path).to eq(new_surrogate_path)
    
    fill_in "Name", with: "New Surrogate Name"
    fill_in "Status", with: "accepted"
    
    click_button 'Create Surrogate'

    expect(current_path).to eq(surrogate_path(Surrogate.last))   
    
    expect(page).to have_text('New Surrogate Name')
  end
end