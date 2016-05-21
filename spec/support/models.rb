class User < ActiveRecord::Base
  has_gravatar :email
end
