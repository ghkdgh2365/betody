class Post < ActiveRecord::Base
    resourcify
    include Authority::Abilities
    has_many :comments, dependent: :destroy
    belongs_to :user
    belongs_to :menu
    has_many :contacts, dependent: :destroy
    # validates_acceptance_of :info_agree
    
    # validates :end_day,
    #       date: { after: :start_day }
end
