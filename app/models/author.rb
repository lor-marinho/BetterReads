class Author < ApplicationRecord
  has_many :books
  validates :name, presence: true
end

# == Schema Information
#
# Table name: authors
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
