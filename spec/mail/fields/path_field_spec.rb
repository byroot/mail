# encoding: utf-8
require 'spec_helper'

describe Mail::PathField do
  
  describe "initialization" do

    it "should initialize" do
      doing { Mail::PathField.new("Path", "news.example.com") }.should_not raise_error
    end
    
    it "should accept a string with the field name" do
      t = Mail::PathField.new('Path: news.example.com!news.example.org')
      t.name.should == 'Path'
      t.value.should == 'news.example.com!news.example.org'
    end

    it "should accept a string without the field name" do
      t = Mail::PathField.new('news.example.com!news.example.org')
      t.name.should == 'Path'
      t.value.should == 'news.example.com!news.example.org'
    end

  end
  
  describe "instance methods" do
    it "should return a host" do
      t = Mail::PathField.new('new.example.com')
      t.hosts.should == ['new.example.com']
    end

    it "should return two hosts" do
      t = Mail::PathField.new('new.example.com!new.example.org')
      t.hosts.first.should == 'new.example.com'
      t.hosts.last.should == 'new.example.org'
    end
  
    it "should return the formatted line on to_s" do
      t = Mail::PathField.new('new.example.com!new.example.org')
      t.value.should == 'new.example.com!new.example.org'
    end
    
    it "should return the encoded line" do
      t = Mail::PathField.new('new.example.com!new.example.org')
      t.encoded.should == "Path: new.example.com!new.example.org\r\n"
    end
    
    it "should return the encoded line" do
      t = Mail::PathField.new("news.example.com")
      t.encoded.should == "Path: news.example.com\r\n"
    end
    
    it "should return the decoded line" do
      t = Mail::PathField.new('new.example.com!new.example.org')
      t.decoded.should == 'new.example.com!new.example.org'
    end
    
  end

end
