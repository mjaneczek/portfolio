(1..5).each do |index|
  Technology.create(name: "Technologia #{index}")
  Technology.create(name: "Inna technologia #{index}")
  Project.create(name: "Projekt #{index}", description: "Opis #{index}", technologies: Technology.last(2))
end