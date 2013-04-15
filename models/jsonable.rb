class JSONable
    def to_json(*args)
        hash = {}
        self.instance_variables.each do |var|
            var_name = "#{var}"
            var_name[0] = '' #we clear the @ of the var_name 
            hash[var_name] = self.instance_variable_get var
        end
        hash.to_json
    end
    def from_json! string
        JSON.load(string).each do |var, val|
            self.instance_variable_set var, val
        end
    end
end