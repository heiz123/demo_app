require 'rails_helper'
require 'support/utilities'

describe "Authentication" do

  subject { page }

  describe "signin page" do
    before { visit signin_path }

    describe "with invalid information" do

      before { click_link "Sign in" }

      it { should have_content('Sign in') }
      describe "after visiting another page" do
        before { click_link "Home" }
        # it { should have_selector('div.alert.alert-error') }
      end
    end

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Email", with: user.email
        fill_in "Password", with: user.password
        click_button "Sign in"
      end

      it { should have_title(user.name) }
      it { should have_link('Profile', href: user_path(user)) }
      it { should have_link('Setting', href: edit_user_path(user)) }
      it { should have_link('Sign out', href: signout_path) }

      describe "followed bu signout" do
        before { click_link "Sign out" }
        it { should have_link('Sign in')}

      end
    end
  end
  describe "authorization" do
    let(:user) { FactoryGirl.create(:user) }

    describe "for non-signed in users" do

      describe "visitting the edit page" do
        before { visit edit_user_path(user) }
        it { should have_title('Sign in') }
      end
      describe "Submitting to the update action" do
        before { visit user_path(user) }
        specify { expect(response).to redirect_to(signin_path) }
      end

    end

  end

end
