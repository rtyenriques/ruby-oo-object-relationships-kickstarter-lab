class Project
    attr_accessor :title, :backers

  
    def initialize(title)
        @title = title
        @backers = []
        
    end
    
    # def add_backer(backer)
    #   new_project = ProjectBacker.new(self, backer)
    # end


    # def backers
    #     ProjectBacker.all.select {|p| p.project == self}
    # end

    def add_backer(backer)
         new_project = ProjectBacker.new(self, backer)
        @backers << backer
        backer.backed_projects << self
      end
    
      def backers
        @backers
      end

   
    end