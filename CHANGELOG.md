# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- Initial release with two standardized PriorityClass resources
- `giantswarm-critical` (value: 1000000000) for cluster-critical Giant Swarm components
- `giantswarm-high` (value: 900000000) for important components that should preempt customer workloads

[Unreleased]: https://github.com/giantswarm/priority-classes/tree/main
