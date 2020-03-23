# frozen_string_literal: true

class User < ActiveRecord::Base
  extend Devise::Models
  
  # Include default devise modules. Others available are:
  # :confirmable, :trackable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
   
  acts_as_voter
  acts_as_votable

  has_and_belongs_to_many :friends, 
                          class_name: 'User', 
                          join_table:  :friends, 
                          foreign_key: :user_id, 
                          association_foreign_key: :subscriber_id,
                          dependent: :destroy
  has_many :feed_items, dependent: :destroy
end
