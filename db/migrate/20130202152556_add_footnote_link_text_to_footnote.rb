class AddFootnoteLinkTextToFootnote < ActiveRecord::Migration
  def change
    add_column :footnotes, :link_text, :string
  end
end
