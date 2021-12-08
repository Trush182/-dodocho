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
  def equipment_name_to_skill(equipment)
    {
      "Douche" => "shower",
      "TV" => "television",
      "Wifi" => "internet",
      "Livres" => "books"
    }[equipment]
  end

  def real_status(status)
    case status
      when "pending" then "Pending"
      when "accepted" then "Accepted"
      when "refused" then "Refused"
    end
  end
end
