class OrderSerializer < ActiveModel::Serializer
  attributes :id, :destaddress, :quantity, :menu_id, :user_id
end
