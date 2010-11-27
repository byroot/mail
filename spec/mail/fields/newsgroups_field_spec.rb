# encoding: utf-8
require 'spec_helper'

describe Mail::NewsgroupsField do
  
  describe "initialization" do

    it "should initialize" do
      doing { Mail::NewsgroupsField.new("Newsgroups", "alt.comp.os.linux") }.should_not raise_error
    end
    
    it "should accept a string with the field name" do
      t = Mail::NewsgroupsField.new('Newsgroups: alt.comp.os.linux,alt.comp.os.multideskos')
      t.name.should == 'Newsgroups'
      t.value.should == 'alt.comp.os.linux,alt.comp.os.multideskos'
    end

    it "should accept a string without the field name" do
      t = Mail::NewsgroupsField.new('alt.comp.os.linux,alt.comp.os.multideskos')
      t.name.should == 'Newsgroups'
      t.value.should == 'alt.comp.os.linux,alt.comp.os.multideskos'
    end

  end
  
  describe "instance methods" do
    it "should return a group" do
      t = Mail::NewsgroupsField.new('alt.comp.os.linux')
      t.groups.should == ['alt.comp.os.linux']
    end

    it "should return two groups" do
      t = Mail::NewsgroupsField.new('alt.comp.os.linux,alt.comp.os.multideskos')
      t.groups.first.should == 'alt.comp.os.linux'
      t.groups.last.should == 'alt.comp.os.multideskos'
    end
  
    it "should return the formatted line on to_s" do
      t = Mail::NewsgroupsField.new('alt.comp.os.linux,alt.comp.os.multideskos')
      t.value.should == 'alt.comp.os.linux,alt.comp.os.multideskos'
    end
    
    it "should return the encoded line" do
      t = Mail::NewsgroupsField.new('alt.comp.os.linux,alt.comp.os.multideskos')
      t.encoded.should == "Newsgroups: alt.comp.os.linux,alt.comp.os.multideskos\r\n"
    end
    
    it "should return the encoded line" do
      t = Mail::NewsgroupsField.new("alt.comp.os.linux")
      t.encoded.should == "Newsgroups: alt.comp.os.linux\r\n"
    end
    
    it "should return the decoded line" do
      t = Mail::NewsgroupsField.new('alt.comp.os.linux,alt.comp.os.multideskos')
      t.decoded.should == 'alt.comp.os.linux,alt.comp.os.multideskos'
    end
    
  end

end
