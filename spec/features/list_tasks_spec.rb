require 'spec_helper'

describe "Viewing a list of tasks" do
  
  it "shows the tasks" do
    task1 = Task.create(name: 'Write feature spec',
                        description: 'Write a test that describes what the user should be able to do',
                        status: 'open')

    task2 = Task.create(name: 'Write feature spec',
                        description: 'Write a test that describes what the user should be able to do',
                        status: 'closed')

    task3 = Task.create(name: 'Write feature spec',
                        description: 'Write a test that describes what the user should be able to do',
                        status: 'open')

    visit tasks_url

    expect(page).to have_text("Tasks")
    expect(page).to have_text(task1.name)
    expect(page).to have_text(task2.name)
    expect(page).to have_text(task3.name)

    expect(page).to have_text(task1.description)
    expect(page).to have_text(task1.status)

  end
  
end