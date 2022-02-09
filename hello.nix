{ stdenv }:

derivation {
  inherit stdenv;
  system = "x86_64-darwin";
  name = "my-hello-1.0";
  builder = stdenv.shell;
  args = [ "-e" ./builder.sh ];
  messagefile = ./message.txt;
  outputs = ["foo" "out"];
  shellHook = "PS1='sup$ '";
}
