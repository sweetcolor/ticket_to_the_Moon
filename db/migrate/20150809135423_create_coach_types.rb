class CreateCoachTypes < ActiveRecord::Migration
  def change
    create_table :coach_types, id: false, options: 'INHERITS(types)', primary_key: :id
    execute <<-POSTGRESQL
      ALTER TABLE coach_types
      ADD PRIMARY KEY (id);
    POSTGRESQL
  end
end
