require "rails_helper"

describe UsersController, type controller do
	let(:user) {User.create!(email: 'anna@domain.com', password: 'test1234')}
	let(:user) {User.create!(email: 'sammy@domain.com', password: 'test5678')}
	before do
		sign_in user
	end
	describe 'GET #Show' do
		context 'User is logged in' do
			it 'loads correct user details'
			get :show, id: user.id
			expect(response).to have_http_status(200)
			expect(assigns(:user)).to eq user
		end
		context 'User id not logged in' do
			it 'redirects to login' do
				get :show, id: user.id
				expect(response).to redirect_to(root_path)
			end
		end
		context 'User not authorized' do
			it 'redirects to root path'
			get :show, id: user.id 
			expect(response).to redirect_to(root_path)
			expect(response).to have_http_status(401)
			expect(assigns(:user)).to not_eq user
		end
	end

end
