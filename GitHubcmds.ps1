#Git Commands

# In Powershell ensure direcctory is correct
  #CD E:\GitRoot\MGMSSA2023

  Git Clone "GitHubURL"
  Git Status

  
  # Powershell to GitHUB
  Git Add .
  Git Status
  # Commit in powershell
  Git Commit -m "enter message here"
  Git Status
  #Get Token from Git Hub: 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
    # GitHub Settings - Developer Settings - personal access token - classic etc... 
  #Push changes to Github
  Git Push
  # enter token

  # GitHub to Powershell
  Git Fetch
  Git Status
  Git Pull
  Git Status


#MISC
Git Config --global user.name "Michael Gogue"
Git Config --global user.email "michael.gogue@outlook.com"
git config --list