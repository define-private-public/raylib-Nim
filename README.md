Bindings for raylib: http://raylib.com

Official repo here: https://gitlab.com/define-private-public/raylib-Nim

Treat other places as mirrors, but issues can still be logged on the GitHub
mirror.

====
Static Compile branch
====

This will compile raylib into the Nim binary directly from the RayLib source.
To do this, grab a copy of the raylib source and drop it into `src/raylib_src/`
before running `nimble install`.


Notes:
- You must use `raylib` as a shared library
  - build it from their `develop` branch
- You're source file must share the same location as the shared library
- Working right now to get it running on Linux & OS X first
- Desktop only (no Android or Web, sorry)
- Still a work in progress
- Not everything is bound


TODO
- [ ] Better Readme
- [ ] Some examples
- [ ] OS X support
- [ ] Windows support
- [ ] Make it as "Nim Friendly," as possible
- [ ] Talk with raylib upstream 
- [ ] Unbound things

