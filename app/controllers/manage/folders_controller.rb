class Manage::FoldersController < Manage::ApplicationController
  def new
    @folder = Folder.new
  end
end
