class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    if backer.instance_of? Backer
      @backers << backer
    end
    backer.back_project(self)
  end

end
