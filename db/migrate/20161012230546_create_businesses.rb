class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.string :name, default: 'name'
      t.string :address, default: 'address'
      t.string :city, default: 'city'
      t.string :state, default: 'state'
      t.string :zipcode, default: '74133'
      t.string :first_number, default: '000-000-000'
      t.string :second_number, default: '000-000-000'
      t.string :fax, default: 'fax'
      t.string :google_maps, default: 'google maps api code'
      t.string :email, default: 'email'
      t.string :logo, default: 'temp-logo.jpg'
      t.string :google_maps_latitude, :float, default: 53.164065
      t.string :google_maps_longitude, :float, default: 7.346055
      t.string :social_instagram
      t.string :social_facebook
    end
  end
end
