class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user, presence: true
      t.string :email, presence: true
      t.string :password_digest, presence: true

      t.timestamps
    end
  end
end
