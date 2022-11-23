module RetentionsHelper
  def days_to_human(days)
    return 'Forever' if days.blank?
    years = days.to_i / 365
    return "#{days} days" if years == 0
    return "#{years} year" if years == 1
    "#{years} years"
  end
end
