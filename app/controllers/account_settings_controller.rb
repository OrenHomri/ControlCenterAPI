class AccountSettingsController < ApplicationController
	def index
	end

	def users
		sso_id = params['account_id']
  		render :json => {"Users"=>[
  			{"SSOID" => "4A8E0BB8-B025-46BF-909F-63F1349F52C5","Email" => "testmelocal1@wibiya.com"},
  			{"SSOID" => "2CDE2B95-4B1E-489A-9B8A-F45AC1D7F367","Email" => "illegalavi@donanza.com"},
  			{"SSOID" => "D5D983DB-4D35-4FEA-AFE1-A29738029DB5","Email" => "sfdc_mob_19_22@htmanager.org"}]}
	end

	def change_email
		sso_id = params['sso_id']
		new_email = params['new_email']
		render :text => 'Changed email for sso id ' + sso_id + '. New email is: ' + new_email
	end

	def change_password
		sso_id = params['sso_id']
		new_password = params['ew_password']
		render :text => 'Changed password for sso id ' + sso_id + '. New paswword is: ' + new_password
	end
end