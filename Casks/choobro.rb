cask "choobro" do
  version "0.1.5"
  sha256 "35c8dd03af0193116e66486b4bd12ee3a79a2f44aa65cd4fa9499e8e67449f9e"

  url "https://github.com/miguelcaravantes/choobro/releases/download/v#{version}/ChooBro-#{version}-macos-arm64.dmg"
  name "ChooBro"
  desc "Choose which browser opens each link"
  homepage "https://github.com/miguelcaravantes/choobro"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "ChooBro.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/ChooBro.app"]
  end
end
