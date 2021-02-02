class AddSupplierToAccount < ActiveRecord::Migration[5.0]
  def change
    add_reference :accounts, :supplier
  end
end
