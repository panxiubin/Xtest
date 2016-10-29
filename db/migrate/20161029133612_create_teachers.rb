class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.timestamps
    end

    create_table :teachers do |t|
      t.string :name
      t.timestamps
    end

    create_table :courses do |t|
      t.belongs_to :teacher
      t.string :name
      t.timestamps
    end

    create_table :students_teachers, id: false do |t|
      t.belongs_to :teacher
      t.belongs_to :student
    end

    create_table :students_courses, id: false do |t|
      t.belongs_to :course
      t.belongs_to :student
    end
  end
end
