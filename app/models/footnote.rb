class Footnote < ActiveRecord::Base
  attr_accessible :body, :index, :link_text
  belongs_to :post
end
