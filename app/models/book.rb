class Book < ApplicationRecord
  belongs_to :author
  belongs_to :category
  has_many :user_books

  validates :title, presence: true
end

# == Schema Information
#
# Table name: books
#
#  id          :bigint           not null, primary key
#  pages       :integer
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  author_id   :bigint           not null
#  category_id :bigint           not null
#
# Indexes
#
#  index_books_on_author_id    (author_id)
#  index_books_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => authors.id)
#  fk_rails_...  (category_id => categories.id)
#
