require 'spec_helper'

describe "Creating a new task" do 
  it "saves the task and shows the new task's details" do
    surrogate = Surrogate.create(surrogate_attributes)

    visit surrogate_url(surrogate)
    
    click_link 'Add New Task'
    
    expect(current_path).to eq(new_surrogate_task_path(surrogate ))
    
    fill_in "Name", with: "New Task Name"
    fill_in "Description", with: "Another test description to test tasks"
    #fill_in "Status", with: "closed"
    
    click_button 'Create Task'

    expect(current_path).to eq(surrogate_tasks_path(surrogate))   
    
    expect(page).to have_text('New Task Name')
  end

  it "does not save the task if it's invalid" do
    surrogate = Surrogate.create(surrogate_attributes)

    visit new_surrogate_task_url(surrogate)

    expect {
      click_button 'Create Task'
    }.not_to change(Task, :count)

    expect(page).to have_text('error')
  end
end