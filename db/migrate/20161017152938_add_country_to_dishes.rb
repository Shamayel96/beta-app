class AddCountryToDishes < ActiveRecord::Migration[5.0]
  def change
    add_reference :dishes, :country, foreign_key: true
  end
end
