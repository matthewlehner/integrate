require 'spec_helper'
describe Admin::OffsitesController do

  # # This should return the minimal set of attributes required to create a valid
  # # Admin::Offsite. As you add validations to Admin::Offsite, be sure to
  # # update the return value of this method accordingly.
  # def valid_attributes
  #   {}
  # end

  # # This should return the minimal set of values that should be in the session
  # # in order to pass any filters (e.g. authentication) defined in
  # # Admin::OffsitesController. Be sure to keep this updated too.
  # def valid_session
  #   {}
  # end

  # describe "GET index" do
  #   it "assigns all admin_offsites as @admin_offsites" do
  #     offsite = Admin::Offsite.create! valid_attributes
  #     get :index, {}, valid_session
  #     assigns(:admin_offsites).should eq([offsite])
  #   end
  # end

  # describe "GET show" do
  #   it "assigns the requested admin_offsite as @admin_offsite" do
  #     offsite = Admin::Offsite.create! valid_attributes
  #     get :show, {:id => offsite.to_param}, valid_session
  #     assigns(:admin_offsite).should eq(offsite)
  #   end
  # end

  # describe "GET new" do
  #   it "assigns a new admin_offsite as @admin_offsite" do
  #     get :new, {}, valid_session
  #     assigns(:admin_offsite).should be_a_new(Admin::Offsite)
  #   end
  # end

  # describe "GET edit" do
  #   it "assigns the requested admin_offsite as @admin_offsite" do
  #     offsite = Admin::Offsite.create! valid_attributes
  #     get :edit, {:id => offsite.to_param}, valid_session
  #     assigns(:admin_offsite).should eq(offsite)
  #   end
  # end

  # describe "POST create" do
  #   describe "with valid params" do
  #     it "creates a new Admin::Offsite" do
  #       expect {
  #         post :create, {:admin_offsite => valid_attributes}, valid_session
  #       }.to change(Admin::Offsite, :count).by(1)
  #     end

  #     it "assigns a newly created admin_offsite as @admin_offsite" do
  #       post :create, {:admin_offsite => valid_attributes}, valid_session
  #       assigns(:admin_offsite).should be_a(Admin::Offsite)
  #       assigns(:admin_offsite).should be_persisted
  #     end

  #     it "redirects to the created admin_offsite" do
  #       post :create, {:admin_offsite => valid_attributes}, valid_session
  #       response.should redirect_to(Admin::Offsite.last)
  #     end
  #   end

  #   describe "with invalid params" do
  #     it "assigns a newly created but unsaved admin_offsite as @admin_offsite" do
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Admin::Offsite.any_instance.stub(:save).and_return(false)
  #       post :create, {:admin_offsite => {}}, valid_session
  #       assigns(:admin_offsite).should be_a_new(Admin::Offsite)
  #     end

  #     it "re-renders the 'new' template" do
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Admin::Offsite.any_instance.stub(:save).and_return(false)
  #       post :create, {:admin_offsite => {}}, valid_session
  #       response.should render_template("new")
  #     end
  #   end
  # end

  # describe "PUT update" do
  #   describe "with valid params" do
  #     it "updates the requested admin_offsite" do
  #       offsite = Admin::Offsite.create! valid_attributes
  #       # Assuming there are no other admin_offsites in the database, this
  #       # specifies that the Admin::Offsite created on the previous line
  #       # receives the :update_attributes message with whatever params are
  #       # submitted in the request.
  #       Admin::Offsite.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
  #       put :update, {:id => offsite.to_param, :admin_offsite => {'these' => 'params'}}, valid_session
  #     end

  #     it "assigns the requested admin_offsite as @admin_offsite" do
  #       offsite = Admin::Offsite.create! valid_attributes
  #       put :update, {:id => offsite.to_param, :admin_offsite => valid_attributes}, valid_session
  #       assigns(:admin_offsite).should eq(offsite)
  #     end

  #     it "redirects to the admin_offsite" do
  #       offsite = Admin::Offsite.create! valid_attributes
  #       put :update, {:id => offsite.to_param, :admin_offsite => valid_attributes}, valid_session
  #       response.should redirect_to(offsite)
  #     end
  #   end

  #   describe "with invalid params" do
  #     it "assigns the admin_offsite as @admin_offsite" do
  #       offsite = Admin::Offsite.create! valid_attributes
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Admin::Offsite.any_instance.stub(:save).and_return(false)
  #       put :update, {:id => offsite.to_param, :admin_offsite => {}}, valid_session
  #       assigns(:admin_offsite).should eq(offsite)
  #     end

  #     it "re-renders the 'edit' template" do
  #       offsite = Admin::Offsite.create! valid_attributes
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Admin::Offsite.any_instance.stub(:save).and_return(false)
  #       put :update, {:id => offsite.to_param, :admin_offsite => {}}, valid_session
  #       response.should render_template("edit")
  #     end
  #   end
  # end

  # describe "DELETE destroy" do
  #   it "destroys the requested admin_offsite" do
  #     offsite = Admin::Offsite.create! valid_attributes
  #     expect {
  #       delete :destroy, {:id => offsite.to_param}, valid_session
  #     }.to change(Admin::Offsite, :count).by(-1)
  #   end

  #   it "redirects to the admin_offsites list" do
  #     offsite = Admin::Offsite.create! valid_attributes
  #     delete :destroy, {:id => offsite.to_param}, valid_session
  #     response.should redirect_to(admin_offsites_url)
  #   end
  # end

end
