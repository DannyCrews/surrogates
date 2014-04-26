require 'spec_helper'

describe "A task" do

  it "belongs to a surrogate" do
    surrogate = Surrogate.create(surrogate_attributes)

    task = surrogate.tasks.new(task_attributes)

    expect(task.surrogate).to eq(surrogate)
  end

  it "with example attributes is valid" do
    task = Task.new(task_attributes)

    expect(task.valid?).to be_true
  end

  it "requires a name" do
    task = Task.new(name: "")

    expect(task.valid?).to be_false
    expect(task.errors[:name].any?).to be_true
  end

  it "requires a status" do
    task = Task.new(status: "")

    expect(task.valid?).to be_false
    expect(task.errors[:status].any?).to be_true
  end

  it "requires a description over 3 characters" do
    task = Task.new(description: "X" * 3)

    expect(task.valid?).to be_false
    expect(task.errors[:description].any?).to be_true
  end

end
