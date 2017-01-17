class OrderTableSerializer < ActiveModel::Serializer
  attributes :id, :destination_address, :quantity
end
