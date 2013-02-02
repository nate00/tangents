class AddPostIdToFootnotes < ActiveRecord::Migration
  def change
    add_column :footnotes, :post_id, :integer
  end
end
