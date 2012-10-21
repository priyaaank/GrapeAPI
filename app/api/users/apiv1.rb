module Users
  class APIV1 < Grape::API

    resource :user do

      desc "Returns a user for a given user id"
      get '/:id' do
        user = User.find(params[:id])
        present user, :with => Users::UserResponseEntity
      end

    end

  end
end
