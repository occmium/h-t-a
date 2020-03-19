# frozen_string_literal: true

class User < ActiveRecord::Base
  extend Devise::Models
  
  # Include default devise modules. Others available are:
  # :confirmable, :trackable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  # after_touch :friends
   
  acts_as_voter
  acts_as_votable

  # def friends
  #   self.find_votes_for(vote_scope: "friend").voters
  # end
end
