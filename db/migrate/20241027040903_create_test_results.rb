class CreateTestResults < ActiveRecord::Migration[7.2]
  def change
    create_table :test_results do |t|
      t.string :test_name
      t.string :status
      t.float :duration
      t.string :environment
      t.text :log
      t.text :error_message

      t.timestamps
    end
  end
end
