# GIT + GitHub

## Qu’est-ce que Git & Github ?
Git est un logiciel de gestion de versions. C’est un outil incontournable pour tout développeur qui se respecte pour stocker, collaborer et connaitre dans les détails toutes les modifications de code d’un projet commun.

Lis d'abord notre [introduction made in BeCode](https://github.com/becodeorg/BeCode/wiki/Git-&-Github).

Tutoriel complet d’utilisation : [https://try.github.io](https://try.github.io)
Inscription sur Github : [https://github.com/join](https://github.com/join)

### GitHub Profile

* Prennez le temps de mettre à jour votre profile GitHub : https://github.com/settings/profile

### Utiliser GitHub avec le terminal pour **Linux**

Pour se logguer à votre compte GitHub vous devez avoir un clé SSH, voici les étapes qui vous permettrons de la créer et de l'envoyer à GitHub

1. Ouvre ton Terminal.
1. Copie/colle le texte ci-dessous, en changeant l'email par l' email de ton compte GitHub.
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
Cela crée une clef ssh, avec l'email comme identifiant.

1. Generating public/private rsa key pair.
When you're prompted to "Enter a file in which to save the key," press `Enter`. This accepts the default file location.

1. Enter a file in which to save the key (/home/user/*my-key-name*): [Press enter]
1. Enter passphrase (empty for no passphrase): [Laisse vide]
1. Enter same passphrase again: [Laisse vide]
1. cat ~/*my-key-name*/*my-key-name*.pub
1. copier la clé ssh ( commence par `ssh-rsa ......`)
1. Suivre ce tuto à partir du point 2 : https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/

### Utiliser GitHub avec le terminal pour **Mac**

Pour se logguer à votre compte GitHub vous devez avoir un clé SSH, voici les étapes qui vous permettrons de la crée et de l'envoyer à GitHub
1. Generating a new SSH key
1. Open Terminal
1. Paste the text below, substituting in your GitHub email address.
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
This creates a new ssh key, using the provided email as a label.
1. Faire le premier point [Generating a new SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
1. cat ~/.ssh/id_rsa.pub
1. copier la clé ssh ( commence par **ssh-rsa**...)
1. Suivre ce tuto à partir du point 2 : https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/

### Utiliser GitHub avec le terminal pour **Windows**

Pour se logguer à votre compte GitHub vous devez avoir un clé SSH, voici les étapes qui vous permettrons de la crée et de l'envoyer à GitHub
1. Generating a new SSH key
1. Open Terminal/cmdr.
1. Paste the text below, substituting in your GitHub email address.
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
This creates a new ssh key, using the provided email as a label.
1. Generating public/private rsa key pair.
When you're prompted to "Enter a file in which to save the key," press `Enter`. This accepts the default file location.

1. Enter a file in which to save the key (/Users/UserName/.ssh/id_rsa): [Press enter]
1. Enter passphrase (empty for no passphrase): [Type a passphrase]
1. Enter same passphrase again: [Type passphrase again]
1. cat ~/.ssh/id_rsa.pub
1. copier la clé ssh ( commence par ssh-rsa ......)
1. Suivre ce tuto à partir du point 2 : https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/


### Documentation et apprentissage 
* [Git - petit guide](http://rogerdudler.github.io/git-guide/index.fr.html)
* [Codeschool - git ](https://www.codeschool.com/learn/git)
* [Codecademy - git (limité) ](https://www.codecademy.com/courses/learn-git/lessons/git-workflow/exercises/hello-git)
* [Learn git branching](http://learngitbranching.js.org)
* [15min to Learn Git](https://try.github.io) :fr: :uk:
* [**Git Pro Book](http://git-scm.com/book/en/v2) :fr: :uk:**
* [Aide-Mémoire Git](https://services.github.com/on-demand/downloads/github-git-cheat-sheet.pdf) :uk:
* `pdf` [Using Git in Team](01-GIT/documentation/git_2.pdf) :gb:
* [Mastering Markdown](https://guides.github.com/features/mastering-markdown/) :uk:
* [Git-tips](https://github.com/git-tips/tips)
* [Bitbucket Complete tutorial](https://www.atlassian.com/git/tutorials/learn-git-with-bitbucket-cloud) :uk:
* Read and practise all of this tutorial: [Learn Enough Command Line to Be Dangerous](http://www.learnenough.com/command-line/)
* [markdown-cheatsheet](https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf)
* [Become a git guru](https://fr.atlassian.com/git/tutorials)

### Branch Conflict

* If you have a _"This branch has conflicts that must be resolved"_ on the merge of a GitHub Pull-request, you can read that: [syncing-a-fork](https://help.github.com/articles/syncing-a-fork/) ! :uk:

### Contribuer à un dépot sans être contributeur

[create-pull-request](https://services.github.com/on-demand/intro-to-github/create-pull-request)































