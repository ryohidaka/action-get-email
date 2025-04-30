# Get Email

[![GitHub Release](https://img.shields.io/github/v/release/ryohidaka/action-get-email)](https://github.com/ryohidaka/action-get-email/releases/)
[![Test Action](https://github.com/ryohidaka/action-get-email/actions/workflows/test.yml/badge.svg)](https://github.com/ryohidaka/action-get-email/actions/workflows/test.yml)

GitHub Actions to get user public email address.

## Usage

```yml
on: [push]

jobs:
  get-email:
    runs-on: ubuntu-latest
    steps:
      - uses: ryohidaka/action-get-email@v1
```

## Inputs

| Input | Description | Required | Default |
| ----- | ----------- | -------- | ------- |
| ``    |             | ✅       | ``      |

## Outputs

| Output | Description | Example |
| ------ | ----------- | ------- |
| ``     |             | ``      |
