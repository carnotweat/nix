with import <nixpkgs> {};
[
  { inherit git;
    thunk = ({}: hello);
  }
]
