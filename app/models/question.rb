class Question < ActiveRecord::Base
  acts_as_taggable
  belongs_to :user
  has_many :answers

  searchkick text_start: [:title], suggest: [:title]

  def search_data
    {
      title: title,
      body: body,
      tag_list: tag_list
    }
  end
end
