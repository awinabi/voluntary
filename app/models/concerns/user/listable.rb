class User
  module Listable
    extend ActiveSupport::Concern
    
    included do
      has_many :lists
      has_many :list_items, through: :lists
    end 
  end
end