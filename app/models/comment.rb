class Comment < ActiveRecord::Base
    resourcify
    belongs_to :post
    belongs_to :user
end
