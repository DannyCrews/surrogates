require 'spec_helper'

describe "Viewing an individual task" do 

  it "shows a task's details" do

    task = Task.create(task_attributes)

    visit task_url(task)

    expect(page).to have_text(task.name)
    expect(page).to have_text(task.description)
    expect(page).to have_text(task.status)

  end

end