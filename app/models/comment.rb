class Comment < ApplicationRecord
  # rails g model comment username:string body:text post:references
  # This adds the below line belongs_to. 
  # We want this relationship with post since comments are
  # attached to it. 
  belongs_to :post
end
