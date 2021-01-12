# Example profile for Git profiles plugin

# All git repositories under the $profile_root_dir directory will use this profile.
profile_root_dir=$HOME/foo

read -r -d '' profile_config << EOC
# Define here the local git configuration commands to be used with this profile
# Use the "--replace-all" option to override any existing configuration on the repository
git config --local --replace-all user.name "FirstName LastName"
git config --local --replace-all user.email "firstname.lastname@example.com"
EOC
