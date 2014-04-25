require 'spec_helper'

describe "Viewing a list of surrogates" do
  
  it "shows the surrogates" do
    surrogate1 = Surrogate.create(name: 'Dan',
                        status: 'applied')

    surrogate2 = Surrogate.create(name: 'Cynthia',
                        status: 'accepted')

    surrogate3 = Surrogate.create(name: 'Will',
                        status: 'approved')

    visit surrogates_url

    expect(page).to have_text("Surrogates")
    expect(page).to have_text(surrogate1.name)
    expect(page).to have_text(surrogate2.name)
    expect(page).to have_text(surrogate3.name)

    expect(page).to have_text(surrogate1.status)
    expect(page).to have_text(surrogate2.status)
    expect(page).to have_text(surrogate3.status)

  end
  
end