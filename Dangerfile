# Sometimes it's a README fix, or something like that - which isn't relevant for
# including in a project's CHANGELOG for example
declared_trivial = github.pr_title.include? "#trivial"

# Make it more obvious that a PR is a work in progress and shouldn't be merged yet
warn("PR is classed as Work in Progress") if github.pr_title.include? "[WIP]"

# Warn when there is a big PR
warn("Big PR") if git.lines_of_code > 500

has_app_changes = !git.modified_files.grep(/ProjectName/).empty?
has_test_changes = !git.modified_files.grep(/ProjectNameTests/).empty?

# If changes are more than 10 lines of code, tests need to be updated too
if has_app_changes && !has_test_changes && git.lines_of_code > 10
  fail("Tests were not updated", sticky: false)
end

# Check for Podfile updates.
podfile_updated = !git.modified_files.grep(/Podfile/).empty?
podspec_updated = !git.modified_files.grep(/Podspec/).empty?

# Leave warning, if Podfile changes
if podfile_updated || podspec_updated
  warn "The `Podfile` or `Podspec` was updated"
end

# Run swiftlint
swiftlint.lint_files
