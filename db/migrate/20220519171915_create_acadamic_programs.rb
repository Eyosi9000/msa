class CreateAcadamicPrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :acadamic_programs do |t|
      t.references :program, null: false, foreign_key: true
      t.references :program_level, null: false, foreign_key: true
      t.references :program_type, null: false, foreign_key: true
      t.integer :duration, null: false

      t.timestamps
    end
  end
end
