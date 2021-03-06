class Manage::FoldersController < Manage::ApplicationController
  load_resource :folder

  def index
    @folders = current_user.folders
  end

  def new
    @folder = Folder.new
  end

  def create
    @folder = Folder.new(folder_params)

    if @folder.save
      redirect_to manage_folders_path
    else
      render :new
    end
  end

  def destroy
    @folder.destroy

    redirect_to manage_folders_path
  end

  private

  def folder_params
    params.require(:folder).permit(:name).merge(user_id: current_user.id)
  end
end
