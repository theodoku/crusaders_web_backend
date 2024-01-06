module Api
    module V1
      class PeopleController < ApplicationController
        def show
          person = Person.find(params[:id])
          person_json = PersonRepresenter.new(person).as_json
          render json: person_json
        rescue ActiveRecord::RecordNotFound
          render json: { error: 'Person not found' }, status: :not_found
        end
      end
    end
end
  