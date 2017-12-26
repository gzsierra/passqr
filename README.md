# PASSQR
Generate a temporary QR code for a quick share. In this specific case, we use it for quick password share between a computer and a phone.

## Depedancy
- bash
- qrencode
- eog

## Usage
- `bash qr.sh`
- You will be ask **secretly** to enter the shared password
- You will see the QR code popup in display
- When you exit the display every trace will be forgotton from this script.

## TODO
- [ ] Use library for QR code generating
- [ ] Use library for display
- [ ] Better temporary indexing (live: `mktemp`)
- [ ] Hack on [Keepass project](https://github.com/keepassxreboot/keepassxc)

## ADVERTISING
1. This script should **NEVER** be use in **public** with actual password.
 - Why? Because anyone can scan a QR code...
 - But, if you crypt the password before share so you have the decrypt it on your phone (for exemple), then yes you cloud probably do it.
2. The script create a tmp file using `mktemp`, so if someone was listening to that folder he probably have your password.
 - Actually this is an issue and it will be fix soon&trade;

## LICENCE
[Apache2.0](https://github.com/gzsierra/passqr/blob/master/LICENSE)
