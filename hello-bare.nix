let stdenv = (import <nixpkgs> {}).stdenv; in
let recursiveBindingHack = rec {
  foo = {
    all = [ foo out ];
    args = [ "-e" /Users/ian/scratch/builder.sh ];
    builder = "/nix/store/l25gl3siwmq6gws4lqlyd1040xignvqw-bash-4.4-p23/bin/bash";
    drvAttrs = {
      args = [ "-e" /Users/ian/scratch/builder.sh ];
      builder = "/nix/store/l25gl3siwmq6gws4lqlyd1040xignvqw-bash-4.4-p23/bin/bash";
      messagefile = /Users/ian/scratch/message.txt;
      name = "my-hello-1.0";
      outputs = [ "foo" "out" ];
      shellHook = "PS1='sup$ '";
      inherit stdenv;
      system = "x86_64-darwin";
    };
    drvPath = "/nix/store/pyskbsiixv28jj1s01gijh0b0jpaymkb-my-hello-1.0.drv";
    inherit foo;
    messagefile = /Users/ian/scratch/message.txt;
    name = "my-hello-1.0";
    outputs = [ "foo" "out" ];
    outPath = "/nix/store/8x0zx1p2k76abcmmp6la239ybwa7p1nd-my-hello-1.0-foo";
    outputName = "foo";
    shellHook = "PS1='sup$ '";
    inherit stdenv;
    system = "x86_64-darwin";
    type = "derivation";
  };

  out = foo // {
    outPath = "/nix/store/pppj7nh5s8l9wbmv6i3avyb9skzayyg9-my-hello-1.0";
    outputName = "out";
  };

};
in
recursiveBindingHack.foo
