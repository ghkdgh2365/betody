class Contact < ActiveRecord::Base
    resourcify
    belongs_to :user
    belongs_to :post
end
