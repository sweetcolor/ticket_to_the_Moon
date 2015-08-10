class CreateType < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name, null: false, limit: 20
    end
  end
end
