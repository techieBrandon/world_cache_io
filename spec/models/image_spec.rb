require 'spec_helper'

describe Image do

  before(:each) do
    @image = Image.new
  end

  describe Image, "#latitude" do
    describe "without valid latitude" do
      it "return nil if never assigned" do
	@image.latitude.should be_nil
      end
      it "has error if save attempted" do
	@image.save
        @image.errors[:latitude].any?.should be_true	
      end
    end
    describe "with value larger than 90" do
      it "has error if save attempted" do
        @image.latitude = 91
	@image.valid?.should be_false
        @image.errors[:latitude].any?.should be_true	
      end
    end
    describe "with value less than -90" do
      it "has error if save attempted" do
        @image.latitude = -91
	@image.valid?.should be_false
        @image.errors[:latitude].any?.should be_true	
      end
    end
  end

  describe Image, "#longitude" do
    describe "without valid longitude" do
      it "return nil if never assigned" do
	@image.longitude.should be_nil
      end
      it "has error if save attempted" do
	@image.save
        @image.errors[:longitude].any?.should be_true	
      end
    end
    describe "with value larger than 90" do
      it "has error if save attempted" do
        @image.longitude = 181
	@image.valid?.should be_false
        @image.errors[:longitude].any?.should be_true	
      end
    end
    describe "with value less than -90" do
      it "has error if save attempted" do
        @image.longitude = -181
	@image.valid?.should be_false
        @image.errors[:longitude].any?.should be_true	
      end
    end
  end
  
  describe Image, "#lonlatheight" do
    describe "without valid lonlatheight" do
      it "return nil if never assigned" do
	@image.lonlatheight.should be_nil
      end
      it "has error if save attempted" do
	@image.save
        @image.errors[:lonlatheight].any?.should be_true	
      end
    end
  end


  after(:each) do
    @image = nil
  end

end
