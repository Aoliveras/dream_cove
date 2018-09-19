class Post < ApplicationRecord
    # belongs_to :user, class_name: "user", foreign_key: "user_id"
    belongs_to :user
    has_many :comments, dependent: :destroy
end
