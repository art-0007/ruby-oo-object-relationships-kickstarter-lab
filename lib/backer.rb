require 'pry'
class Backer
attr_accessor :name

    def initialize(name)
     @name = name   
    end

    def back_project(project)
        project_backer = ProjectBacker.new(project, self)
    end

    def backed_projects
        #binding.pry
        ProjectBacker.all.select {|el| el.backer == self}.map {|n| n.project}   
    end
end