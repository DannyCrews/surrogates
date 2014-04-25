class CreateSurrogates < ActiveRecord::Migration
  def change
    create_table :surrogates do |t|
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
