{ simgrid, fetchFromGitLab } :

simgrid.overrideAttrs(oldAttrs: rec {
  version = oldAttrs.version + "-custom";
  src = fetchFromGitLab {
    domain = "framagit.org";
    owner = "simgrid";
    repo = "simgrid";
    rev = "fbd3494dc9a7b377cccbc749586313d0f75c15cd";
    sha256 = "sha256-qr/ocxlxMw/UXKAkr1puirW6sttwvmjrE1pH/PIAJF4=";
  };
})
