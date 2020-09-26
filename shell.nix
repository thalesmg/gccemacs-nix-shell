let
  sources = import ./nix/sources.nix;
  nixpkgs = import sources.nixpkgs {
    overlays = [
      (import sources.emacs-overlay)
    ];
  };
in
nixpkgs.mkShell {
  buildInputs = [
    nixpkgs.emacsGcc
  ];
}
