require 'spec_helper'

describe Student do
  it { should allow_value("stefan@prz.edu.pl").for(:email) }
  it { should_not allow_value("stefan@onet.pl").for(:email) }
  it { should allow_value("").for(:email) }

  describe ".by_first_name" do
    before(:each) do
      @stefan1 = FactoryGirl.create(:student, first_name:"Stefan")
      @stefan2 = FactoryGirl.create(:student, first_name:"Stefan", last_name:"Sobieski")
      @jozek = FactoryGirl.create(:student, first_name:"Jozek")
    end

    it "finds students with a given name" do
      expect(Student.by_first_name("Stefan")).to include(@stefan1, @stefan2)
    end
    it "doesn't find students with other names" do
      expect(Student.by_first_name("Stefan")).not_to include(@jozek)
    end
  end
end
