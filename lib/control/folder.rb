require 'fileutils'

module Control
  class Folder
    attr_accessor :folder

    def initialize(folder)
      @folder = folder
    end

    def create
      FileUtils.mkdir_p @folder.path
    end

    def delete
      FileUtils.rm_rf @folder.path
    end
  end
end
