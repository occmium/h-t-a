class UserSerializer < ActiveModel::Serializer
  attributes :id, 
             :name, 
             :nickname, 
             :citizenship, 
             :birthday, 
             :last_name
end
