module ControllerMacros
  def login_administrator
    before do
      @request.env["devise.mapping"] = Devise.mappings[:administrator]
      @administrator = FactoryGirl.create(:administrator)
      sign_in @administrator
    end
  end
end