class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.text :body
      t.boolean :navigation, default: false

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
