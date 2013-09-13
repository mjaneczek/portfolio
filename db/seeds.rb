(1..5).each do |index|
  Technology.create(name: "Technologia #{index}", css_class: "label-primary")
  Technology.create(name: "Inna technologia #{index}", css_class: "label-danger")
  Project.create(name: "Projekt #{index}", description: "Opis #{index}", technologies: Technology.last(2))
end