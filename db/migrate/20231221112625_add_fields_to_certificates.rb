class AddFieldsToCertificates < ActiveRecord::Migration[7.1]
  def change
    change_column :certificates, :name, :string
    add_column :certificates, :diplom_kind, :string
    add_column :certificates, :diplom_mention, :string
    add_column :certificates, :diplom_path, :string
    add_column :certificates, :diplom_date, :date
  end
end
