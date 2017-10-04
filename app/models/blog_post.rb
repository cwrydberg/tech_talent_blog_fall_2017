class BlogPost < ApplicationRecord

	has_many :comments, dependent: :destroy

	validates :title, :blog_entry, presence: true
	validates :title, length: { maximum:140 }

end
