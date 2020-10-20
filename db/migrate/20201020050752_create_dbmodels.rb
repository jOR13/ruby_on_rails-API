class CreateDbmodels < ActiveRecord::Migration[5.1]
  def change
    create_table :dbmodels do |t|
      t.string :nombre
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
