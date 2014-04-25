require 'spec_helper'

describe "Viewing an individual surrogate" do 

  it "shows a surrogate's details" do

    surrogate = Surrogate.create(surrogate_attributes)

    visit surrogate_url(surrogate)

    expect(page).to have_text(surrogate.name)
    expect(page).to have_text(surrogate.status)

  end

end