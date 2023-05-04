class CreateItemBoughts < ActiveRecord::Migration[6.0]
  def change
    create_table :item_boughts, primary_key: [:transaction_id, :course_id] do |t|
      t.references :transaction, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.decimal :amount, null: false, precision: 10, scale: 2
      t.timestamps
    end
  end
end
