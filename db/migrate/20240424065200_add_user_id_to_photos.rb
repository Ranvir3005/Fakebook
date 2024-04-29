class AddUserIdToPhotos < ActiveRecord::Migration[7.1]
  def change
    add_reference :photos, :user, foreign_key : true
  end
end
