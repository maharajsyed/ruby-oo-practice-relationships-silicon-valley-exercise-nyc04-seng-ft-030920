class Startup
        @@all = []
        attr_accessor :name, :domain
        attr_reader :founder
        def initialize(name, founder, domain)
            @name = name
            @founder = founder
            @domain = domain
            @@all << self
        end
        
        def pivot(domain, name)
            @domain = domain
            @name = name
        end
        
        def self.all
            @@all
        end
        
        def self.find_by_founder(founder)
            self.all.find do |startup|
                startup.founder == founder
                return startup
            end
        end

        def self.domains
            #should return an array of all of the different startup domains
            domain_array = []
                all.map do |startup|
                domain_array << startup.domain
            end
            domain_array
        end
    end
