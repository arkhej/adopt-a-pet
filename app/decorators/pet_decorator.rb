class PetDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def adopt_specie_path
    specie = object.enum_to_s(:specie).parameterize
    location = object.location.parameterize
    breed = object.breed.parameterize

    h.adopt_specie_path(specie: specie, location: location, breed: breed, id: self)
  end

  def to_param
    "#{id}-#{name.parameterize}"
  end
end