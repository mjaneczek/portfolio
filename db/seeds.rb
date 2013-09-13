short_text = "Lorem ipsum dolor sit amet erat. Quisque sed turpis. Praesent dolor. Nulla dignissim. Vivamus magna.
  Integer in est. Sed et magnis dis parturient montes, nascetur ridiculus mus.
  Mauris euismod. Integer faucibus a, laoreet urna. Suspendisse turpis a luctus aliquam, nulla ac ligula erat volutpat."


long_text = short_text + 
  "Vivamus ut aliquet ultrices posuere eget, tortor. Proin dui non imperdiet sed, dapibus risus eu neque vel tincidunt eget,
  nonummy consequat urna orci vitae massa. Pellentesque tempus arcu. Nam lacus. Nunc mollis. Cras sed nulla. 
  Proin cursus wisi, eu eros. Aliquam consequat tortor, dictum tempus, fringilla mollis. Proin dui ligula, elementum eu,
  posuere cubilia Curae, Nullam sit amet wisi. Sed ornare, orci sem laoreet sit amet leo. Integer non nulla.
  Aliquam commodo tempus, urna eget velit pede nec quam. Integer ac ante nec nisl. Vestibulum ornare lobortis non, neque. 
  Etiam malesuada fames ac elit metus, quis pellentesque ipsum cursus nunc. Suspendisse vitae facilisis eget, nonummy gravida. 
  Donec faucibus orci luctus nibh, mollis neque vel massa. Ut id risus. Nullam suscipit enim.
  Phasellus fermentum diam ut malesuada sit amet, lacinia varius quis, blandit ipsum, ultricies leo. Cras."


(1..5).each do |index|
  2.times do
    Technology.create(name: "Technologia #{index}", description: short_text,
      full_description: long_text, css_class: "label-primary",)
  end

  Project.create(name: "Projekt #{index}", description: short_text, 
    full_description: long_text, technologies: Technology.last(2))
end