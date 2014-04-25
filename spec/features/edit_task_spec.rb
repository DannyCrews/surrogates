require 'spec_helper'

describe "Editing a task" do
  
  it "updates the task and shows the task's updated details" do
    task = Task.create(task_attributes)
    
    visit task_url(task)
    
    click_link 'Edit'
    
    expect(current_path).to eq(edit_task_path(task))
        
    expect(find_field('Name').value).to eq(task.name)

    fill_in 'Name', with: "Updated Task Name"
    
    click_button 'Update Task'
    
    expect(current_path).to eq(task_path(task))

    expect(page).to have_text('Updated Task Name')
  end
  
end
