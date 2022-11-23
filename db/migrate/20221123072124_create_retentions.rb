class CreateRetentions < ActiveRecord::Migration[7.0]
  def change
    create_table :retentions do |t|
      t.integer :cycle
      t.integer :project

      t.timestamps
    end
  end
end
