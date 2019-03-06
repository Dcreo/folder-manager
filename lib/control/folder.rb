module Control
  class Folder
    attr_accessor :name

    def initialize(options = {})
      @name = options[:name]
      @folders_path = ENV['FOLDERS_PATH']
    end

    def create
      Dir.mkdir [@folders_path, @name].join('/')
    end
  end
end
