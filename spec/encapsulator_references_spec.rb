require "spec_helper"

RSpec.describe Encapsulators::EncapsulatorReferences do

  it "contains method references corresponding to Encapsulators' methods" do
    (Encapsulators.methods - Object.methods - [:logger]).each do |encapsulator|
      expect(Encapsulators::EncapsulatorReferences.method(encapsulator)).to be_a(Method)
    end
  end
end
