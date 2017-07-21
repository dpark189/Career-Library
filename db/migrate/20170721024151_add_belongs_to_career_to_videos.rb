class AddBelongsToCareerToVideos < ActiveRecord::Migration[5.0]
  def up
    add_column :videos, :career_id, :integer
  end
  def down
    remove_column :videos, :career_id
  end
end
