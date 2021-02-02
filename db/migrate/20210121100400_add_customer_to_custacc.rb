class AddCustomerToCustacc < ActiveRecord::Migration[5.0]
  def change
    add_reference :custaccs, :customer
  end
end
