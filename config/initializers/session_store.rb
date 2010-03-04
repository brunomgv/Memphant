# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Memphant_session',
  :secret      => 'bf788267da17dbd50178d3c6b36edf53af9304ca22ae625e778274be591ed13e30155a0b3dafa6bc21fe837dde5c3adf0041deba1fb262ef17d90ad59df671f9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
