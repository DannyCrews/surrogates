require 'spec_helper'

describe "A surrogate" do

  it "has many tasks" do
  surrogate = Surrogate.new(surrogate_attributes)

  task1 = surrogate.tasks.new(task_attributes)
  task2 = surrogate.tasks.new(task_attributes)

  expect(surrogate.tasks).to include(task1)
  expect(surrogate.tasks).to include(task2)
end

it "deletes associated tasks" do
  surrogate = Surrogate.create(surrogate_attributes)

  surrogate.tasks.create(task_attributes)

  expect { 
    surrogate.destroy
  }.to change(Task, :count).by(-1)
end

end