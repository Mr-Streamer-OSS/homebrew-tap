# Mr. Streamer Homebrew tap

Install [Mr. Streamer](https://mrstreamer.app/), the open source IPTV player,
on an Apple silicon Mac running macOS 13 or later:

```sh
brew install --cask mr-streamer-oss/tap/mr-streamer
```

The cask installs the project's original signed and notarized stable DMG from
[GitHub Releases](https://github.com/Mr-Streamer-OSS/MrStreamer/releases).
This is the project's own tap. It is not a Homebrew main-catalogue listing.

## Updates

The app's updater remains available. For Homebrew updates, quit Mr. Streamer,
then run:

```sh
brew update
brew upgrade
```

Plain `brew upgrade` also checks your other installed packages. For this
self-updating cask, Homebrew compares the installed app with the tap when their
version formats match. A nightly version and a stable version can be incomparable;
use the app updater for nightlies.

An explicitly named upgrade or `brew reinstall` can replace a newer app with
the tap's version. Inspect both versions and quit the app before an intentional
repair. Do not force or adopt an existing direct installation. Move its app
bundle aside deliberately before installing into the same location, preserving
its profile and downloaded copies.

## Uninstall

Quit the app, then run:

```sh
brew uninstall --cask mr-streamer-oss/tap/mr-streamer
```

Normal uninstall retains your settings, subscriptions, Keychain credentials and
downloaded copies. This tap declares no zap operation.

## Release verification

[0.0.21 verification](docs/verification/0.0.21.md) records the published artifact,
package checks and remaining native verification limits. The cask supports
Apple silicon only. Wout Stiens maintains this tap.
