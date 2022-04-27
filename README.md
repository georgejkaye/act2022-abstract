# act2022-abstract

* **[Latest release](https://github.com/georgejkaye/act2022-abstract/releases/latest)**
## Setting up

This project uses *submodules* to share diagrams and things between repos.
This means that the repo has a snapshot of another repo at a certain commit.To make sure you have them all pulled, do this to initialise them:

```sh
git submodule update --init
git submodule foreach git checkout main
```

Now you can interact with the submodule as if it were its own repo, pushing and pulling as you like.
After making some commits in a submodule repo, you can use `git add` in the top repo to add those new commits to the main repo.

If someone else has changed the submodule to a different commit, you can update your local copy with 

```sh
git submodule update
```

Alternatively you can set the following git option:
```sh

git config --global submodule.recurse true

```

## GitHub Actions

Every time you push a commit to `main`, the latex will be compiled and put in a release.

