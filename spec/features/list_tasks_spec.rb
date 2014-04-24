require 'spec_helper'

describe "Viewing a list of tasks" do

  it "shows the tasks" do
    visit 'http://example.com/tasks'

    expect(page).to have_text("2 Tasks")
    expect(page).to have_text("Task 1")
    expect(page).to have_text("Task 2")
  end
  
end