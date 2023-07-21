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

### Save channels

```
guix describe --format=channels > channels.scm
```
