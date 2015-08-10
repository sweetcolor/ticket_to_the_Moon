class CreateTicketTypes < ActiveRecord::Migration
  def change
    create_table :ticket_types, id: false, options: 'INHERITS(types)', primary_key: :id
    execute <<-POSTGRESQL
      ALTER TABLE ticket_types
      ADD PRIMARY KEY (id);
    POSTGRESQL
  end
end
