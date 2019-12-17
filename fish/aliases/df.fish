function df
  # Reason this uses --bw is because vifm's built-in :df command is
  # triggering this alias, and vifm renders the color escape sequences as is.
  pydf $argv --bw
end
