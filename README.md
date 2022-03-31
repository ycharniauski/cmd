
# Terminal Tools

Effective work with sub repositories. 
To start working with this repo clone it to ~/cmd folder. Some sh files have dependency
 to ~/cmd folder

## Git helpers

### all-status.sh

Executes `git status` command for each sub repository. Show branch name of each repository.

![/cmd/all-status.sh](images/all-status.png?raw=true)

### all-checkout.sh branch-name

Executes `git checkout branch-name` command for each sub repository if branch exisits.
You can set staging branch on all repositories with one command `~/cmd/all-checkout.sh staging`

![/cmd/all-checkout.sh staging](images/all-checkout-staging.png?raw=true)

or checkout feature branch `~/cmd/all-checkout.sh feature-branch`

![/cmd/all-checkout.sh staging](images/all-checkout-feature.png?raw=true)

### all-update.sh

Command pulls `upstream/staging` branch, reset current staging to `upstream/staging`, push `origin/staging`
If current branch is not staging branch, command checkout staging branch, update it and then checkout out previous branch

![/cmd/all-update.sh](images/all-update.png?raw=true)

### all-rebase-staging.sh

Command rebase current branch to staging if current branch is not `staging`

### all-reset-hard.sh

Reset all affected files. Executes `git reset --hard` on each repository

## Non Git helpers

### Run chrome with unsecure mode

`~/cmd/chrome-run-unsecure.sh`

### Switch to production env

`~/cmd/switch-prod-env.sh`

### Switch to staging env

`~/cmd/switch-staging-env.sh`

