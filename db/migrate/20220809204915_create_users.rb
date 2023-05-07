class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    unless table_exists?(:users)
      create_table :users do |t|
        t.string :username
        t.string :password_digest
        t.timestamps
      end
    end
  end
end