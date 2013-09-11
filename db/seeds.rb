(1..5).each do |index|
	Project.create(name: "Projekt #{index}", description: "Opis #{index}")
  Technology.create(name: "Technologia #{index}")
end