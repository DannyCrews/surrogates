class AddSurrogateReferenceToTasks < ActiveRecord::Migration
  def change
    add_reference :tasks, :surrogate, index: true
  end
end
