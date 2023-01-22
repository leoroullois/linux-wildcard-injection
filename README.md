## Lab pour exploiter la vulnérabilité "Wildcard Injection" sur linux

Retrouvez l'article sur mon [blog](https://blog.leoroullois.com).

## Installation du lab

Après avoir cloné le repository, placez vous dans le dossier.
Le lab est un simple container docker, que vous pouvez installer en exécutant le script ``start.sh`` si vous êtes sous linux :

```
chmod +x start.sh
```

Puis :

```bash
./start.sh
```

Ou alors, manuellement.
Créer l'image docker du lab :

```bash
docker build -t wildcard_lab_image .
```

Créer et lancer le container :
```bash
docker run -it --hostname=ubuntu --name=wildcard_lab wildcard_lab_image
```
