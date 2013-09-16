class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :email
      t.string :phone
    end
  end
end
