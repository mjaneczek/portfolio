(1..5).each do |index|
  Technology.create(name: "Technologia #{index}")
  Project.create(name: "Projekt #{index}", description: "Opis #{index}", technologies: [Technology.last])
end