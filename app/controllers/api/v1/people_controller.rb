module Api
  module V1
    class PeopleController < ApplicationController
      def index
        people = Person.all
        people_json = people.map { |person| PersonRepresenter.new(person).as_json }
        render json: people_json
      end

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
