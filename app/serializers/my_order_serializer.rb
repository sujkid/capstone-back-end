class MyOrderSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :foodname, :fooddescription, :date
end
