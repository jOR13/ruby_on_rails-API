module Api
    module V1
        #El nombre del controlador debe ser plurar y la clase se debe llamar igual que el controller
        class UsersController < ApplicationController
            def index
                users = Dbmodel.order('created_at');
                render json:{
                status: 'success',
                message: 'usuarios cargados',
                data: users
                }, status: :ok
            end

            #Meotodo para obtener user por id
            def show
                user = Dbmodel.find(params[:id])
                render json:{
                    status: 'success',
                    message: 'usuario cargado',
                    data: user
                }, status: :ok
            end


            def create
                user = Dbmodel.new(user_params)
                if user.save
                    render json:{
                        status: 'success',
                        message: 'usuario creado',
                        data: user
                    }, status: :ok
                else
                    render json:{p
                        status: 'ERROR',
                        message: 'usuariod no creado',
                        data: user.erros
                    }, status: :unprocessable_entity
                end
            end
            #parametros para el create
            private 
            #tienen que ser los mismos parametros que se definieron cxomo require.
            def user_params
                params.permit(:nombre, :email, :password);
            end

        end
    end
    
end