require "spec_helper"

RSpec.describe Encapsulators::EncapsulatorReferences do

  let(:default_methods) {Object.methods + [:logger]}
  let(:encapsulator_methods) {Encapsulators.methods - default_methods}

  it "contains methods returning references to Encapsulators' methods" do
    expect(Encapsulators::EncapsulatorReferences.methods).to include(*encapsulator_methods)

    encapsulator_methods.each do |encapsulator|
      expect(Encapsulators::EncapsulatorReferences.method(encapsulator)).to be_a(Method)
    end
  end

  context "class including EncapsulatorReferences" do

    before :each do
      class Something
        include Encapsulators::EncapsulatorReferences
      end
    end

    it "contains instance methods returning references to Encapsulators' methods" do
      included_methods = Something.new.methods - default_methods
      expect(encapsulator_methods).to include(*included_methods)
    end

    it "contains class methods returning references to Encapsulators' methods" do
      included_methods = Something.new.methods - default_methods
      expect(encapsulator_methods).to include(*included_methods)
    end
  end
end
