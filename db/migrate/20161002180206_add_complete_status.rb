class AddCompleteStatus < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.boolean :complete
    end
  end
end
