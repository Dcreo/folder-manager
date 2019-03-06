class Folder < ApplicationRecord
  after_create :create_folder
  after_destroy :delete_folder

  belongs_to :user

  def path
    [folders_path, user.id, id].join('/')
  end

  def folders_path
    ENV['FOLDERS_PATH']
  end

  private

  def create_folder
    Control::Folder.new(self).create
  end

  def delete_folder
    Control::Folder.new(self).delete
  end
end
