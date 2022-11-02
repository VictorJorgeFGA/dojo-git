# Dojo Git

# Estados de um arquivo
| Estado | Explicaçao |
| :----: | :--------: |
| `untracked` | O arquivo existe na pasta mas não está sendo _acompanhado_ pelo git |
| `modified`  | O arquivo está diferente da última versão _commitada_ no git |
| `staged` | O arquivo está diferente da última versão _commitada_ no git, porém está pronto para ser _commitado_ novamente |
| `commited` | O arquivo está exatamente igual ao que está no histórico do git |

## Comandos git
| Comando | Explicação |
| :-----: | :--------: |
| `git clone <http ou ssh>` | _Clona_ o repositório remoto em sua máquina local |
| `git status` | Mostra o estado atual do repositório. |
| `git add <file>` | Pede para o git passar a considerar as modificações feitas no arquivo `<file>`
| `git commit -m "<description>"` | _Commita_ as alterações em estado `staged` |
| `git push origin <branch>` | Envia as alterações _commitadas_ para a branch remota `<branch>` |
| `git pull origin <branch>` | Recebe as alterações _commitadas_ na branch remota `<branch>` |
