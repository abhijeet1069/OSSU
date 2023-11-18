# Exploiting and Securing Vulnerabilities in JAVA application

git clone https://github.com/ucdavis/WebGoat-WEB1062.git

## OWASP

Cyber-Security content

## Cross Site Scripting (XSS)

Cross side scripting is an injection attack in which an attacker injects malacious executable scripts into the code of a
trusted application or website.

- Reflected XSS injection
    Attacker sends a malacious URL to victim.
    Victim clicks on the link that loads malacious webpage.
    The malacious script embedded in URL executes in the victim's browser and steals sensetive information
    like the session ID.

- Stored XSS injection
- DOM based XSS injection

```php
<html>
    <head>
        <title>
            Self XSS
        </title>
    </head>
    <body>
        <?php
            echo 'Hello ' . $_GET["name"] . '!';
        ?>
    </body>
</html>
```

```sql
select * from TABLE where id = "" or 1=1
```
