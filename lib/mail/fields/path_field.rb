# encoding: utf-8
require 'mail/fields/structured_field'

module Mail
  class PathField < StructuredField
    
    FIELD_NAME = 'path'
    CAPITALIZED_FIELD = 'Path'
    
    attr_reader :hosts
    
    def initialize(value = nil, charset = 'ascii')
      self.charset = charset
      super(CAPITALIZED_FIELD, strip_field(FIELD_NAME, value), charset)
      self.parse
      self
    end
    
    def parse(val = value)
      @hosts = value.split('!')
    end
    
    def encoded
      "#{CAPITALIZED_FIELD}: #{value}\r\n"
    end
    
    def decoded
      value
    end
    
  end
end
