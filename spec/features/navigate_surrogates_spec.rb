require 'spec_helper'

describe "Navigating surrogates" do

  it "allows navigation from the detail page to the listing page" do
    surrogate = Surrogate.create(surrogate_attributes)

    visit surrogate_url(surrogate)

    click_link "All Surrogates"

    expect(current_path).to eq(surrogates_path)
  end

  it "allows navigation from the listing page to the detail page" do
    surrogate = Surrogate.create(surrogate_attributes)
    
    visit surrogates_url

    click_link surrogate.name

    expect(current_path).to eq(surrogate_path(surrogate))
  end
end