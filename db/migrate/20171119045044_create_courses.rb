class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.references :teacher, foreign_key: true
      t.string :course_key

      t.timestamps
    end
  end
end
