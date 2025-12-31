;; SPDX-License-Identifier: AGPL-3.0-or-later
;; ECOSYSTEM.scm - asdf-ghjk ecosystem position

(ecosystem
  (version . "1.0.0")
  (name . "asdf-ghjk")
  (type . "version-manager-plugin")
  (purpose . "asdf plugin for ghjk - bridge between asdf and its successor")

  (position-in-ecosystem . "migration-bridge")

  (what-this-is
    "asdf plugin for installing ghjk (asdf successor)"
    "Enables gradual migration from asdf to ghjk"
    "Allows running both version managers in parallel"
    "Provides ghjk CLI via asdf install mechanism")

  (what-this-is-not
    "Not a replacement for asdf - installs alongside it"
    "Not ghjk itself - just the asdf plugin for ghjk"
    "Not required for ghjk usage - alternative installation method")

  (related-projects
    ;; Direct ecosystem relationships
    (("hyperpolymath/asdf-control-tower" . "coordination-hub")
     ("hyperpolymath/asdf-plugin-configurator" . "configuration-tool")
     ("hyperpolymath/asdf-metaiconic-plugin" . "metadata-registry")
     ("hyperpolymath/asdf-ui-plugin" . "visual-interface"))

    ;; External dependencies
    (("asdf-vm/asdf" . "parent-ecosystem")
     ("metatypedev/ghjk" . "upstream-tool")
     ("hyperpolymath/mustfile" . "build-tool")))

  (integration-points
    (provides
      "bin/list-all - lists available ghjk versions"
      "bin/latest-stable - returns latest stable ghjk version"
      "bin/download - downloads ghjk release"
      "bin/install - installs ghjk to asdf prefix")

    (consumes
      "GitHub releases from metatypedev/ghjk"
      "asdf plugin interface callbacks")))
