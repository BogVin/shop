class CreateLineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :line_items do |t|
      t.references(:product, null: false, type: :bigint)
      t.references(:cart, null: false, type: :bigint)

      t.timestamps
    end
  end
end
