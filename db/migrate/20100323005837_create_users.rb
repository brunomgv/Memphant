class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email
      t.string :nickname, :limit => 20
      t.string :password_salt
      t.string :password_hash
      t.string :privacy
      t.string :gender
      t.date :birthday
      t.string :twitter
      t.string :facebook
      t.string :msn
      t.string :gtalk
      t.string :timezone
      t.string :locale
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
