
**Note these steps are only pertinent if you are setting up this course outside of the jhudsl organization**

For more information on these settings see instructions in the [getting started GitHub wiki pages](https://github.com/jhudsl/OTTR_Template/wiki/Setting-up-GitHub-secrets).

It's important that these are set up and named exactly what they are below in order for Github actions to work correctly.

To set up these repository secrets, on your repository's main Github page, go to `Settings` and scroll down to see `Secrets` on the left side menu bar.

- [ ] Set `GH_PAT`
`Name`:  `GH_PAT`
`value`: A personal access token [following these instructions](https://github.com/jhudsl/OTTR_Template/wiki/Start-a-new-course#6-set-up-your-github-personal-access-token).
Underneath `Select scopes`, check both `repo` and `workflow`.
Then copy the PAT and save as the value.
