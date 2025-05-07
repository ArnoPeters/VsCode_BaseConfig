[[_TOC_]]

This chapter contains instructions for new developers on how to setup a working development environment for this repository, and how the build/release process is arranged.

## Overview

_TODO: Describe purpose of this repo._

## Local Development

### Recommmended Tooling

- _EXAMPLE: [Visual Studio Code](https://code.visualstudio.com/).  
The repository makes use of ARM templates, and VS Code extension recommendations that provide intellisense and help with ARM-template development have been included in the /.vscode folder of the repo.
**These extensions are not available for Visual Studio itself!**_

### Prerequisites

- No special steps needed.  

#### Keys and Secrets

Please do not put secrets and Azure access keys in code or configuration.  
_EXAMPLE: KeyVault secrets are available in local development and Azure keys kan be stored in the [local Secret Manager](https://docs.microsoft.com/en-us/aspnet/core/security/app-secrets)._

### Building the code

- No special steps needed.  

### Debugging locally or against a development environment

- No special steps needed.

### Running Tests

- No special steps needed.

#### UI Tests

- N/A

## Releasing

### Dependencies on other repositories

- _EXAMPLE: The repository makes use of the ARM and YAML templates for releases and pipelines in the ```Pipelines``` repository._

### Versioning

- N/A  
  _TODO: Example: when using Gitversion, point to pull request template and gitversion.yml on how to bump version numbers_

### Pipelines

The repo uses the following build/release pipelines:

- _Example: Azure-pipelines.yml: Builds and deploys an artifact to Azure_
