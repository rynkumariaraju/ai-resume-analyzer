class CreateResumes < ActiveRecord::Migration[7.1]
  def change
    create_table :resumes do |t|
      t.string :file_name
      t.text :content
      t.text :analysis

      t.timestamps
    end
  end
end
