require File.dirname(__FILE__) + '/../spec_helper'

describe Medicion do
  it "should be valid" do
    Medicion.new.should be_valid
  end
end
