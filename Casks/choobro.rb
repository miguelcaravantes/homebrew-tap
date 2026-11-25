cask "choobro" do
  version "0.2.5"
  sha256 "8df982f502ea55184f4acda74530bea6be62d653070a2823c47e611add697ce6"

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
