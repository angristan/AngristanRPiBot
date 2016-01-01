# twython-scripts
Quelques scripts pour faire un bot Twitter en Python/Bash, sur un Raspberry Pi.

## Pré-requis

### Les paquets
Voici comment installer les outils nécessaires :

`sudo apt-get install python-setuptools python-dev libffi-dev libssl-dev python-pip`

`sudo pip install twython`

`sudo pip install requests[security]`


### L'API Twitter
Vous devez vous connecter sur l'[Application Management](https://apps.twitter.com/app/new) de Twitter, avec le compte bot. Créez une application.

Ensuite, allez dans "Permissions" et mettez "Read and Write".

Dans "Keys and Access Tokens", générez un token.

Dans les différents scripts python, rempacez les différents tokens et et clés par les votres (4 en tout).

C'est bon, vous pouvez tweeter !

# Bot
Pour faire un bot avec ces scripts, utilisez [cron](https://fr.wikipedia.org/wiki/Cron).

Par exemple : https://github.com/Angristan/twython-scripts/blob/master/cron.

# Ça donne quoi ?

J'ai mis tout ceci en application sur un Raspberry Pi. Vous pouvez le suivre : [@AngristanRPiBot](https://twitter.com/AngristanRPiBot/).

Enjoy !

## Licence

[The unlicense](https://github.com/Angristan/twython-scripts/blob/master/LICENSE) : do whatever you want with the code.
