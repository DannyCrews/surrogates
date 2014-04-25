require 'spec_helper'

describe "Editing a surrogate" do
  
  it "updates the surrogate and shows the surrogate's updated details" do
    surrogate = Surrogate.create(surrogate_attributes)
    
    visit surrogate_url(surrogate)
    
    click_link 'Edit'
    
    expect(current_path).to eq(edit_surrogate_path(surrogate))
        
    expect(find_field('Name').value).to eq(surrogate.name)

    fill_in 'Name', with: "Updated Surrogate Name"
    
    click_button 'Update Surrogate'
    
    expect(current_path).to eq(surrogate_path(surrogate))

    expect(page).to have_text('Updated Surrogate Name')
  end
  
end