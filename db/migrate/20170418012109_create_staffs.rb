class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.integer :age
      t.references :office, index: true

      t.timestamps
    end
  end
end
