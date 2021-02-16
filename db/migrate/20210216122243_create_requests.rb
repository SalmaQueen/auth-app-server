class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :title
      t.text :description
      t.string :status
      t.float :lng
      t.float :lat
      t.string :type_of_request
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
