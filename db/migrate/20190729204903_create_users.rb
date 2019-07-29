class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :title
      t.belongs_to :workspace, foreign_key: true
      t.string :email
      t.string :password
      t.string :confirmation_password

      t.timestamps
    end
  end
end
