class CreateCareers < ActiveRecord::Migration[5.0]
  def change
    create_table :careers do |t|
      t.string  :name, null: false
      t.string  :description
      t.integer  :salary
      t.string  :education_req
      t.string  :outlook
      t.timestamps
    end
  end
end
