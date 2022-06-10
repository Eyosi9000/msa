class CreateProgramLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :program_levels do |t|
      t.string :code, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
