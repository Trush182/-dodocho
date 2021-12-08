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

  def equipments_name_to_skill(equipments)
    {
      "TV" => "tv",
      "Douche" => "douche",
      "Wifi" => "wifi",
      "Livres" => "livres"
    }[equipments]
  end

  def real_status(status)
    case status
      when "pending" then "Pending"
      when "accepted" then "Accepted"
      when "refused" then "Refused"
    end
  end
end
