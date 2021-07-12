describe Person do

  let(:beyonce) { Person.new("Beyonce") }
  let(:jay_z) { Person.new("Jay-Z") }

  describe "#get_married" do
    
    context "when passed a Person instance as an argument" do
      it "sets the the partners of each person" do
        beyonce.get_married(jay_z)
        expect(beyonce.partner).to be(jay_z)
        expect(jay_z.partner).to be(beyonce)
      end
    end

    context "when passed something other than a Person instance as an argument" do
      it "outputs an error message to the terminal" do
        error_message = Person::PartnerError.new.message
        expect { beyonce.get_married("Jay-Z") }.to output(a_string_matching(error_message)).to_stdout
      end
    end

  end

end
