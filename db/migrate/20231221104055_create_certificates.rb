class CreateCertificates < ActiveRecord::Migration[7.1]
  def change
    create_table :certificates, id: :uuid do |t|
      t.text :name
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.string :birth_place
      t.string :ine
      t.string :year
      t.string :quality
      t.integer :ects

      t.timestamps
    end
  end
end
