class CreateBabysitters < ActiveRecord::Migration
  def change
    create_table :babysitters do |t|
      t.text :notes
      t.string :picture
      t.integer :age
      t.integer :rate
      t.string :email
      t.string :phone
      t.string :name

      t.timestamps

    end
  end
end
