module ApplicationHelper
def admin?
  if current_user.admin == true
    return true
  else
    return false
  end
end
 
def owner?(id)
  if current_user.id == id
    return true
  else
    return false
  end
end
 
def admin_or_owner?(id)
  if (admin? || owner?(id))
    return true
  else
    return false
  end
end
end
