# Spanish GC cops page in a (docker) containter

Automate the hijacking of voting-promoting websites and / or any kind of Government of Catalonia websites thanks to this Dockerfile that will put in place a webserver for you, with the same "This web has been taken down" page that Spanish cops Guardia Civil used when they err… actually they took down Referendum.cat and Garanties.cat.

## Quick start

Docker is a prerequisite.

1. Clone this repo
2. Run `docker build -t gc .` in the project directory.
3. Run `docker run  -p 80:80 gc` (assuming nothing else is using your port :80)
4. Point your browser to `http://localhost`

## I don't use Docker or only want an static version of it

Oriol would be proud of you. Just run `wget -r -k -l 1 --mirror http://garanties.cat` and its all yours.

## Motivation

Censor don't like smiles. We do.

## Legal disclaimer

We don't host any Guardia Civil authored files in this repo. No intellectual property is being damaged. 

## LICENSE

MIT.
