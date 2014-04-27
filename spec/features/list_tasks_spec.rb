require 'spec_helper'

describe "Viewing a list of tasks" do
    it "shows the tasks for a specific surrogate" do
    surrogate1 = Surrogate.create(surrogate_attributes(name: "Iron Man"))
    task1 = surrogate1.tasks.create(task_attributes(name: "Roger Ebert"))
    task2 = surrogate1.rtask.create(task_attributes(name: "Gene Siskel"))


    surrogate2 = Movie.create(surrogate_attributes(name: "Superman"))
    task3 = surrogate2.tasks.create(task_attributes(name: "Peter Travers"))
    
    visit surrogate_tasks_url(surrogate1)
        
    expect(page).to have_text(task1.name)
    expect(page).to have_text(task2.name)
    expect(page).not_to have_text(task3.name)

  end
  
end