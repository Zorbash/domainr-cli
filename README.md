## domainr-cli

[![Gem version](https://badge.fury.io/rb/domainr-cli.png)](http://badge.fury.io/rb/domainr-cli)

domainr-cli is a terminal interface to [http://domainr.com](http://domainr.com) API.

#### Install

```shell
gem install domainr-cli
```

## Commands

* [info](#info)
* [search](#search)
* [version](#version)

## Usage

For a list of available commands run `domainr-cli help`  
For help on a command run `domainr-cli help some_command`

## Info

Displays info about the specified domain

```shell
domainr-cli info [domain]
```

## Search

Displays a table with availability info on domains matching the provided query

```shell
domainr-cli search [query]
```

## Version

Displays the version

```shell
domainr-cli version

# alternatively
domainr-cli --version
domainr-cli -v
```

# Licence
Released under the MIT License. See the
[LICENSE](https://github.com/Zorbash/domainr-cli/blob/master/LICENSE) file
for further details.
