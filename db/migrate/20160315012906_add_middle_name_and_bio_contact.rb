class AddMiddleNameAndBioContact < ActiveRecord::Migration
  def change
    add_column :contacts, :midname, :string
  end
end
