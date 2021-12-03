module ApplicationHelper
  def service_name_to_skill(service)
    {
      "Jardinage" => "gardening",
      "Courses" => "shopping",
      "Bricolage" => "crafting",
      "Cuisine" => "cooking",
      "Animaux" => "pet-walking"
    }[service]
  end
end
