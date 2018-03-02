class CreateDbs < ActiveRecord::Migration[5.1]
  def change
    create_table :dbs do |t|
      t.string :reason
      t.integer :like

      t.timestamps
    end
  end
end
