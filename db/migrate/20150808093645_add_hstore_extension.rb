class AddHstoreExtension < ActiveRecord::Migration
  def change
    execute <<-POSTGRESQL
      CREATE EXTENSION hstore;
    POSTGRESQL
  end
end
