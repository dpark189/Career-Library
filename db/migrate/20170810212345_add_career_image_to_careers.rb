class AddCareerImageToCareers < ActiveRecord::Migration[5.0]
  def change
    add_column :careers, :career_image, :string
  end
end
