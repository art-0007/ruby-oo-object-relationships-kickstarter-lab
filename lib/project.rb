class Project
attr_accessor :title
    
    def initialize (title)
     @title = title   
    end

    def add_backer(backer)
        project_backer = ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select {|backer| backer.project == self}.map {|n| n.backer}    
    end
end