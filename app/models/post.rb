class Post < ActiveRecord::Base
  attr_accessible :title, :body
  has_many :footnotes

  # I don't think this should be here.
  def body_with_links
    tokens = body.split("*");
    tokens.map! do |token| 
      footnote_index = Integer(token) rescue false
      if footnote_index == false
        token
      else
        footnote = footnotes.find_by_index(footnote_index)
        unless footnote.nil?
          "<a href='#' class='footnote_link disabled' id='footnote_link#{footnote_index}'>#{footnote.link_text}</a>"
        else
          "*#{token}*"
        end
      end
    end

    tokens.join('');
  end

  def footnote_ids
    footnote_ids = []
    footnotes.each do |footnote|
      footnote_ids[footnote.index] = footnote.id
    end
    footnote_ids
  end
end
