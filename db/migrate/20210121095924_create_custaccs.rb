class CreateCustaccs < ActiveRecord::Migration[5.0]
  def change
    create_table :custaccs do |t|
      t.integer :accno
      t.string :acctype

      t.timestamps
    end
  end
end
