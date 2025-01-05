# private-generate-github-token-action

Generate an installation access token for personal use.

> [!IMPORTANT]
> This action is designed for personal use only. Please refrain from using it in your projects.

<!-- actdocs start -->

## Description

This action generates an installation access token using GitHub Apps for GitHub Actions.
It retrieves credentials for GitHub Apps from HCP Vault Secrets.
Parameters for accessing HCP Vault Secrets are extracted from the labels of private images stored in the GitHub Container Registry.
This approach simplifies credential management across repositories and automates the generation of GitHub Apps tokens.

## Usage

```yaml
  steps:
    - name: Private Generate GitHub Token
      uses: tmknom/private-generate-github-token-action@v0
      with:
        repositories: foo-repo
```

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| repositories | A space-separated list of repositories to install the GitHub App on. | n/a | no |

## Outputs

| Name | Description |
| :--- | :---------- |
| token | GitHub installation access token. |

<!-- actdocs end -->

## Permissions

| Scope    | Access |
| :------- | :----- |
| packages | read   |
| id-token | write  |

## FAQ

N/A

## Related projects

- [generate-github-token-action](https://github.com/tmknom/generate-github-token-action): Generate an installation access token using GitHub Apps for GitHub Actions.
- [revoke-github-token-action](https://github.com/tmknom/revoke-github-token-action): Revoke an installation access token using GitHub Apps for GitHub Actions.

## Release notes

See [GitHub Releases][releases].

[releases]: https://github.com/tmknom/private-generate-github-token-action/releases
