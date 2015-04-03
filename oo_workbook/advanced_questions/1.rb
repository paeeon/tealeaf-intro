class SecretFile

  def initialize(secret_data, logger)
    @data = secret_data
    @log = logger
  end

  def data
    @logger.create_log_entry
    @data
  end

  def log
    @log
  end

end

class SecurityLogger
  def create_log_entry

  end
end

super_secret_file = SecretFile.new("this is the super secret data hehe")
super_secret_file.data
puts super_secret_file.log

# She needs to modify it so that any access to data must result 
# in a log entry being generated. That is, any call to the class 
# which will result in data being returned must first call a logging class. 

# Still kinda confused about this one! 