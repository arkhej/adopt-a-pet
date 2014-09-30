module SpeciesHelper
  def link_specie_tab(specie)
    specie_text = Specie.to_s(specie).capitalize
    klasses = ['tab-link']
    klasses << 'is-active' if specie == Specie::PARAMS.keys.first
    link_to specie_text, '#', class: klasses
  end
end
