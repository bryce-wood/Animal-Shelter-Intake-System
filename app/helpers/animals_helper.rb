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

  def sex_to_readable(animal)
    case animal.sex
    when "M"
      "Male"
    when "F"
      "Female"
    else
      "Unknown"
    end
  end

  def format_age(animal)
    return "unknown" if animal.age_in_months.blank?
    
    months = animal.age_in_months
    years = months / 12
    months = months % 12
    
    builder = []
    builder << "#{years} #{'year'.pluralize(years)}" if years > 0
    builder << "#{months} #{'month'.pluralize(months)}" if months > 0
    
    builder.empty? ? "less than a month old" : builder.join(" and ") + " old"
  end

  def display_name(animal)
    "#{animal.name} the #{animal.species}"
  end
end
