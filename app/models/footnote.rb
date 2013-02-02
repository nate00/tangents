class Footnote < ActiveRecord::Base
  attr_accessible :body, :index
  belongs_to :post
end
