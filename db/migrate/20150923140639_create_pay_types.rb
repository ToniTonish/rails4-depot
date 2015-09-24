class CreatePayTypes < ActiveRecord::Migration
  def up
    create_table :pay_types do |t|
      t.string :name

      t.timestamps
    end

    PayType.create(name: 'Check')
    PayType.create(name: 'Credit card')
    PayType.create(name: 'Purchase order')

    add_reference :orders, :pay_type, index: true
    Order.update_all( pay_type_id: '1' )

    #
  end

  def down
  	drop_table :pay_types
  	remove_column :orders, :pay_type_id
  	#add_column :orders, :pay_type
  end
end
