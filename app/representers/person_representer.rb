class PersonRepresenter
    def initialize(person)
      @person = person
    end
  
    def as_json
      {
        id: @person.id,
        name: @person.name,
        title: @person.title,
        photo: @person.photo,
        created_at: @person.created_at,
      }
    end
  
    private
  
    attr_reader :person
end
  