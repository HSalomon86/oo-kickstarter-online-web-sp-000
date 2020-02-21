class Backer

  attr_accessor :name, :backed_projects

@backed_projects = []
  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    if project.instance_of? Project
      @backed_projects << project
    end
    project.add_backer(self) unless project.backers.include?(self)
  end

end
