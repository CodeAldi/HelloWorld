class CreateKontaks < ActiveRecord::Migration[7.0]
  def change
    create_table :kontaks do |t|
      t.string :nama
      t.string :email
      t.string :telepon
      t.string :twitter
      t.string :facebook
      t.string :instagram

      t.timestamps
    end
  end
end
