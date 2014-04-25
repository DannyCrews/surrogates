require 'spec_helper'

describe "Deleting a surrogate" do 
  it "destroys the surrogate and shows the surrogate listing without the deleted surrogate" do
    surrogate = Surrogate.create(surrogate_attributes)

    visit surrogate_path(surrogate)
    
    click_link 'Delete'
    
    expect(current_path).to eq(surrogates_path)
    expect(page).not_to have_text(surrogate.name)
  end
end