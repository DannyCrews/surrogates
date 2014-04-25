require 'spec_helper'

describe "Navigating tasks" do

  it "allows navigation from the detail page to the listing page" do
    task = Task.create(surrogate_attributes)

    visit task_url(task)

    click_link "All Tasks"

    expect(current_path).to eq(tasks_path)
  end

  it "allows navigation from the listing page to the detail page" do
    task = Task.create(task_attributes)
    
    visit tasks_url

    click_link task.name

    expect(current_path).to eq(task_path(task))
  end
end