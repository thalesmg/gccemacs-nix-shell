let
  sources = import ./nix/sources.nix;
  nixpkgs = import sources.nixpkgs {
    overlays = [
      (import sources.emacs-overlay)
    ];
  };
in
{
  gccemacs = nixpkgs.emacsNativeComp;
}
