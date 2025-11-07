# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- Label now uses chart version instead of app version.

### Removed

- Removed appVersion (only version is used now).

## [0.2.0] - 2025-11-07

### Removed

- Removed `app.giantswarm.io/branch` and `application.giantswarm.io/commit` labels.

## [0.1.0] - 2025-11-07

### Added

- Initial release with two standardized PriorityClass resources as defined by sig-architecture
- `giantswarm-critical` (value: 1000000000) for components that the cluster absolutely requires to run and Giant Swarm is adding (e.g., kyverno)
- `giantswarm-high` (value: 900000000) for important components that should preempt customer workloads (e.g., observability components, crossplane)
- Conflict detection using `lookup` to coexist with chart-operator's priority class creation

[Unreleased]: https://github.com/giantswarm/priority-classes/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/giantswarm/priority-classes/releases/tag/v0.1.0
