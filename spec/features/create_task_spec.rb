require 'spec_helper'

describe "Creating a new task" do 
  it "saves the task and shows the new task's details" do    
    visit tasks_url
    
    click_link 'Add New Task'
    
    expect(current_path).to eq(new_task_path)
    
    fill_in "Name", with: "New Task Name"
    fill_in "Description", with: "Another test description to test tasks"
    fill_in "Status", with: "closed"
    
    click_button 'Create Task'

    expect(current_path).to eq(task_path(Task.last))   
    
    expect(page).to have_text('New Task Name')
  end
end