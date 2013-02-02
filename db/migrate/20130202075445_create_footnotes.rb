class CreateFootnotes < ActiveRecord::Migration
  def change
    create_table :footnotes do |t|
      t.text :body
      t.integer :index

      t.timestamps
    end
  end
end
