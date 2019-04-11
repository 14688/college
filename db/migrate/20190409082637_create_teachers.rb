class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.bigint :tnumber
      t.string :tname
      t.bigint :tsex
      t.string :title
      t.string :temail
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
