{
  inputs.nixpkgs.url = "nixpkgs";
  inputs.flake-utils.url = "flake-utils";
  inputs.rust-overlay.url = "github:oxalica/rust-overlay";

  outputs = {
    nixpkgs,
    flake-utils,
    rust-overlay,
    ...
  }:
    flake-utils.lib.eachSystem ["aarch64-linux"] (system: let
      pkgs = import nixpkgs {
        inherit system;
        overlays = [(import rust-overlay)];
      };
    in {
      devShells.default = pkgs.mkShell {
        # packages = with pkgs; [rustc cargo rustfmt clippy];
        packages = [
          (pkgs.rust-bin.stable.latest.default.override {
            # Otherwise rust-analyzer doesn't work.
            extensions = ["rust-src"];
          })
        ];
      };
    });
}
