# guix channel for the UMG MINAI group

## Boostraping guix

### Debian

```bash
sudo apt install guix
```

### Setup for reproducible research

- https://guix.gnu.org/manual/en/html_node/Channels.html
- https://peterloleungyau.github.io/post/more_guix_private_channel/
- https://hpc.guix.info/blog/2022/12/cran-a-practical-example-for-being-reproducible-at-large-scale-using-gnu-guix/

#### Importing non-existing R packages

```
guix import cran --recursive PACKAGE >> minai/packages/cran.scm

## from github
guix import cran --recursive --archive=git URL >> minai/packages/cran.scm
```

#### Upgrade packages

```
guix refresh --load-path=. --update $(grep define-public minai/packages/*.scm | cut -f 2 -d ' ')
```

### Save channels

```
guix describe --format=channels > channels.scm
```

### Authenticate channel

```
git clone https://github.com/umg-minai/guix-minai.git
cd guix-minai
git fetch origin keyring:keyring
guix git authenticate 4e47c0f12cf838335bf731b1947ea434923569e3 \
  "7EAB 7082 91D9 28E5 4387  47A7 F9F3 CB1B 50FB 607A"
```

Details could be found at https://guix.gnu.org/en/blog/2024/authenticate-your-git-checkouts/
