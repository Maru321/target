# == Schema Information
#
# Table name: topics
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  deleted_at :datetime
#
# Indexes
#
#  index_topics_on_deleted_at  (deleted_at)
#  index_topics_on_name        (name) UNIQUE
#

class Topic < ActiveRecord::Base
  acts_as_paranoid
  validates :name, presence: true, uniqueness: true
end
