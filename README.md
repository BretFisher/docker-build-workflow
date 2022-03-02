# Docker Build and Push GitHub Actions Workflow

A Reusable Workflow of the Docker GitHub Actions steps. Enhanced with learnings from production use.

## Reasons to use this workflow

1. Easier to start with than hand-building all the Docker Actions into a single workflow.
2. Provides inline docs based on real-world usage of this workflow.
3. Gives you inputs so you can reuse this workflow across many repositories
and only needing the full workflow stored in a central repository.

## Basic workflow steps

1. Clone the repository
2. Setup QEMU for multi-platform building (buildx) via docker/setup-qemu-action
3. Setup buildx (the best image builder) via docker/setup-buildx-action
4. Log into Docker Hub and/or GHCR
5. Add labels and tags via docker/metadata-action
6. Build and push image via docker/build-push-action
