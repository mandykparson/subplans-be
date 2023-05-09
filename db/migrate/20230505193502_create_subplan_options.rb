class CreateSubplanOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subplan_options do |t|
      t.string :title
      t.string :grade
      t.text :overview
      t.string :link

      t.timestamps
    end
  end
end
