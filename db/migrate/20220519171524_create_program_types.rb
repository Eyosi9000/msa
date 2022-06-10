class CreateProgramTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :program_types do |t|
      t.string :code, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
