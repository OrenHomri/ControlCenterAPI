require "spec_helper"

describe ProductsController do
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

  describe "GET #top_products" do
    it "responds successfully with an HTTP 200 status code" do
      get :top_products, {'product_type' => '5'}
      expect(response).to be_success
      expect(response.status).to eq(200)
      expected = {"Products"=>[{"GID" => "GID1001","Name" => "DM_1001"},{"GID" => "GID1002","Name" => "DM_1002"},{"GID" => "GID1003","Name" => "DM_1003"}]}.to_json
      response.body.should == expected
    end

    it "renders the index template" do
      get :top_products, {'product_type' => '5'}
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end
end