module Factory
    class Static
        def self.load_file
            YAML.load_file(File.dirname(__FILE__) + "/static/#{ENVIRONMENT}.yml")
        end

        def self.static_data(data)
            
        end
    end
end