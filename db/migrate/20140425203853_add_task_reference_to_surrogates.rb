class AddTaskReferenceToSurrogates < ActiveRecord::Migration
  def change
    add_reference :surrogates, :task, index: true
  end
end
