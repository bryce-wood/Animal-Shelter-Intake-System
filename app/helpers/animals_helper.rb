module AnimalsHelper
  def status_to_readable(animal)
    case animal.adoption_status
    when "available"
      "Available for adoption"
    when "adopted"
      "Adopted"
    when "pending"
      "Pending adoption"
    else
      "Unknown status"
    end
  end
end
