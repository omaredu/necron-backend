class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :phone_number, null: false, default: "", index: { unique: true }
      t.string :password
      t.string :password_digest

      t.timestamps
    end
  end
end
