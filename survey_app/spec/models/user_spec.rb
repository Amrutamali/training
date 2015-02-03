describe User do

  # @obj = User.create(name: "amruta",email: "as@gmail.com",age: 23, role_id: 1)

  before(:each) do
    @obj = FactoryGirl.build(:user, :name=>"Rails")
  end

  it "has a name" do
    expect(@obj.name).not_to eq ""
  end

  it "has a email" do
    expect(@obj.email).not_to eq ""
  end

  it "has a age" do
    expect(@obj.age).not_to eq ""
  end

  it "has a password " do
    expect(@obj.password).not_to eq ""
  end




  # it "has a role" do end

=begin
  @obj.role_id = nil
  it "is valid user" do
    expect(@obj.role_id).to eq nil
  end


  it "not has a role"
  it "is not valid user"

  it "is valid user & has login"
  it "is valid user & not has login"

  it "has role and has participate in survey"
  it "has role and not participate in survey"

  it "has role & has participate in survey & attempt all questions"
  it "has role & has participate in survey & attempt some of the questions"
  it "has role & has participate in survey & not attempt any questions"
#  it "has role & has participate in survey & not recive/getting any questions"

  it "has role & has participate in survey & attempt questions & select one option"
  it "has role & has participate in survey & attempt questions & select more than one option"
  it "has role & has participate in survey & attempt questions & not getting any option"

=end

end
