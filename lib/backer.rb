
class Backer
    attr_reader :name, :backed_projects, :project

    def initialize(name)
      @name = name
     
      @backed_projects = []
      
    end

    # def back_project(project)
    #     new_project = ProjectBacker.new(project, self)
      
      
    # end


    # def backed_projects
    #   ProjectBacker.all.select {|p| p.backer == self}
    # end

    def back_project(project)
        new_project = ProjectBacker.new(project, self)
        @backed_projects << project
        project.backers << self
        @backed_projects
      end

end