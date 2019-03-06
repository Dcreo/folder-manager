class Folder < ApplicationRecord
  after_create :create_folder

  private

  def create_folder
    Control::Folder.new(name: name).create
  end
end
