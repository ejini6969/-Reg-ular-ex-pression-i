/* Write a simple regex to validate a username. Allowed characters are:
   1. lowercase letters,
numbers,
underscore
Length should be between 4 and 16 characters (both included).

function validateUsr(username) {
  return /^[a-z\d_]{4,16}$/.test(username)
}

