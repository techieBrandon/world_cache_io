class ExecuteCreateExtensionPostgis < ActiveRecord::Migration
  def up
    execute <<-SQL
      CREATE EXTENSION postgis
    SQL
  end

  def down
    execute <<-SQL
      DROP EXTENSION postgis
    SQL
  end
end
