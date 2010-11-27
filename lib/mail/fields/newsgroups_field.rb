# encoding: utf-8
require 'mail/fields/structured_field'

module Mail
  class NewsgroupsField < StructuredField
    
    FIELD_NAME = 'newsgroups'
    CAPITALIZED_FIELD = 'Newsgroups'
    
    attr_reader :groups
    
    def initialize(value = nil, charset = 'ascii')
      self.charset = charset
      super(CAPITALIZED_FIELD, strip_field(FIELD_NAME, value), charset)
      self.parse
      self
    end
    
    def parse(val = value)
      @groups = val.split(',')
    end
    
    def encoded
      "#{CAPITALIZED_FIELD}: #{value}\r\n"
    end
    
    def decoded
      value
    end
    
  end
end
