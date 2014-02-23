require "spec_helper"

describe AccountSettingsController do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET #users" do
    it "responds successfully with an HTTP 200 status code" do
      expected = {"Users"=>[
        {"SSOID" => "4A8E0BB8-B025-46BF-909F-63F1349F52C5","Email" => "testmelocal1@wibiya.com"},
        {"SSOID" => "2CDE2B95-4B1E-489A-9B8A-F45AC1D7F367","Email" => "illegalavi@donanza.com"},
        {"SSOID" => "D5D983DB-4D35-4FEA-AFE1-A29738029DB5","Email" => "sfdc_mob_19_22@htmanager.org"}]}.to_json
      get :users, {'account_id' => '1001'}
      expect(response).to be_success
      expect(response.status).to eq(200)
      response.body.should == expected
    end
  end
end