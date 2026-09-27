# OpenTelekomCloud Naming Terraform Module

[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](CHANGELOG.md)

This module generates names for 80 OpenTelekomCloud service types using CloudAstro's
naming conventions. It supports prefix, infix and suffix components, service
abbreviations, and an optional state-persisted random suffix. It creates no OTC
resources and requires no cloud credentials.

# Features

- **Service naming**: Generates names for VPCs, subnets, servers, storage and other OTC services.
- **Custom components**: Supports lists of prefix, infix and suffix components.
- **Unique suffixes**: Supports generated suffixes or a literal override with a configurable length.
- **Compatibility**: Preserves existing service output names and random resource addresses.

# Example Usage

The [default example](examples/default/main.tf) uses default suffix generation.
The [full example](examples/full/main.tf) demonstrates all inputs:
