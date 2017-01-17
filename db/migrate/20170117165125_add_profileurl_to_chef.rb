class AddProfileurlToChef < ActiveRecord::Migration
  def change
    add_column :chefs, :profileurl, :string
  end
end
