# Miguel Caravantes's Homebrew tap

Homebrew casks maintained by [Miguel Caravantes](https://github.com/miguelcaravantes).

## Install ChooBro

[ChooBro](https://github.com/miguelcaravantes/choobro) is a native macOS browser chooser. The current download supports Apple Silicon Macs and targets macOS 12 or later; older macOS compatibility is not fully tested.

```sh
brew tap miguelcaravantes/tap
brew trust --cask miguelcaravantes/tap/choobro
brew install --cask miguelcaravantes/tap/choobro
```

Use a current Homebrew version. Homebrew 7 supports the explicit cask trust step; update Homebrew if `brew trust` is unavailable.

Open ChooBro from Applications, then choose **Make Default Browser…** in Settings.

## Upgrade

Quit ChooBro first, then run:

```sh
brew update
brew upgrade --cask miguelcaravantes/tap/choobro
```

## Security

ChooBro is an early preview and is not Developer ID signed or notarized by Apple. This cask removes the `com.apple.quarantine` attribute only from ChooBro.app to avoid its quarantine-triggered first-launch warning. It does not disable Gatekeeper globally or make the app Apple-verified. Install only if you trust the project; managed Macs may still block it.

## Release updates

This tap currently provides ChooBro v0.1.2. Automatic release updates are not connected yet.

## License

[MIT](LICENSE)
