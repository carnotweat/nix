{
  allowBroken = true;
  packageOverrides = super: let self = super.pkgs; in
                            {
                              myHaskellEnv = self.haskell.packages.ghc8107.ghcWithPackages
                                (haskellPackages: with haskellPackages; [
                                  # libraries
                                  arrows async cgi criterion
                                  # tools
                                  cabal-install haskintex zlib bzlib ipprint
                                  ghc.withPackages (hp: with hp; [ zlib ])
                                ]);
                                
                            };

}

