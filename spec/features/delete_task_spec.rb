require 'spec_helper'

describe "Deleting a task" do 
  it "destroys the task and shows the task listing without the deleted task" do
    task = Task.create(task_attributes)

    visit task_path(task)
    
    click_link 'Delete'
    
    expect(current_path).to eq(tasks_path)
    expect(page).not_to have_text(task.name)
  end
end