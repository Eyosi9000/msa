class CreateAcadamicYears < ActiveRecord::Migration[7.0]
  def change
    create_table :acadamic_years do |t|
      t.string :year, null: false
      t.text :description

      t.timestamps
    end
  end
end
