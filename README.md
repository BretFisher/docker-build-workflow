# Template Repo: Docker Build and Push GitHub Actions Workflow

[![Lint Code Base](https://github.com/BretFisher/docker-build-workflow/actions/workflows/call-super-linter.yaml/badge.svg)](https://github.com/BretFisher/docker-build-workflow/actions/workflows/call-super-linter.yaml)
[![Docker Build](https://github.com/BretFisher/docker-build-workflow/actions/workflows/call-local-docker-build.yaml/badge.svg)](https://github.com/BretFisher/docker-build-workflow/actions/workflows/call-local-docker-build.yaml)

A Reusable Workflow of the Docker GitHub Actions steps. Enhanced with learnings from production use.

> ⚠️ **DO NOT call this workflow directly**, rather, use it as a template repo and fork it for your own reusable workflow. I might change this workflow at anytime, based on new GHA features or learnings, and your calling workflow might break. ⚠️

## Reasons to use this workflow

1. Easier to start with than hand-building all the Docker Actions into a single workflow.
2. Provides inline docs based on real-world usage of this workflow.
3. Gives you inputs so you can reuse this workflow across many repositories and only needing the full workflow stored in a central repository.

## Steps to adopt this workflow

1. Fork this repository and tweak the reusable workflow to your liking: [.github/workflows/reusable-docker-build.yaml](.github/workflows/reusable-docker-build.yaml)
2. Copy my "calling" workflow [`templates/call-docker-build.yaml`](templates/call-docker-build.yaml) to all the repos you want to build images in, and change it to point to the forked workflow above.

## "But what does this workflow really do beyond just `docker build`?"

1. Clone the repository
2. Setup QEMU for multi-platform building (buildx) via docker/setup-qemu-action
3. Setup buildx for awesome and fast building via docker/setup-buildx-action
4. Log into Docker Hub and/or GHCR
5. Add labels and tags via docker/metadata-action
6. Build and push image via docker/build-push-action with GitHub-based layer caching
7. Reports tags and labels in the PR comments

## This repository is part of my example DevOps repos on GitHub Actions

- [bretfisher/github-actions-templates](https://github.com/BretFisher/github-actions-templates) - Main reusable templates repository
- [bretfisher/super-linter-workflow](https://github.com/BretFisher/super-linter-workflow) - Reusable linter workflow
- (you are here) [bretfisher/docker-build-workflow](https://github.com/BretFisher/docker-build-workflow)- Reusable docker build workflow
- [bretfisher/docker-ci-automation](https://github.com/BretFisher/docker-ci-automation) - Step by step video and example of a Docker CI workflow
- [My full list of container examples and tools](https://github.com/bretfisher)

## More reading

- [Docker Build/Push Action advanced examples](https://github.com/docker/build-push-action/tree/master/docs/advanced)
- [My full list of container examples and tools](https://github.com/bretfisher)

## 🎉🎉🎉 Join my cloud native DevOps community 🎉🎉🎉

- [My Cloud Native DevOps Discord server](https://devops.fan)
- [My weekly YouTube Live show](https://www.youtube.com/@BretFisher)
- [My weekly newsletter](https://www.bretfisher.com/newsletter)
- [My courses and coupons](https://www.bretfisher.com/courses)
