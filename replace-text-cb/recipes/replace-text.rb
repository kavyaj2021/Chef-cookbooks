replace_or_add "boys" do
  path "/opt/chef-repo/cookbooks/replace-text-cb/recipes/sample.txt"
  pattern "*boys*"
  line "there are 30 boys in a class"
  replace_only_true
end
