class MyOrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :foodname, :date
end
