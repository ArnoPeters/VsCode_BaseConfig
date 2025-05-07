# MARKDOWN WIKI FOLDER

The ```/docs``` folder is intended to be used as a [Markdown Wiki](https://learn.microsoft.com/en-us/azure/devops/project/wiki/about-readme-wiki?view=azure-devops) in Azure Devops.
Therefore the files and folders here must follow certain conventions.

It is possible, but **NOT RECOMMENDED** to MANUALLY edit this folder.  
The best practice instead is to [Publish the branch of the repo](https://learn.microsoft.com/en-us/azure/devops/project/wiki/publish-repo-to-wiki?view=azure-devops&tabs=browser#publish-a-git-repository-to-a-wiki) where the documentation is to be updated to the Markdown Wiki, and use the Azure Devops interface to edit.  
Every time the wiki is saved, a commit will be made on the branch with the changes. Performing a squash commit will flatten this out nicely.

The conventions to pay attention to:

- A ```.order``` file needs to be present. The names (not the extensions) of ALL files in that folder (except the .order file itself) MUST be sorted there to represent the order of the subpages.  
- The title of the page is encoded in the file name.
  - Spaces ' ' will be replaced with dashes '-'
  - Special characters will be URL-encoded
- A folder with the exact same name as a file right next to it is used to add subpages to that file
  - This requires a .order file in that folder as well. 
