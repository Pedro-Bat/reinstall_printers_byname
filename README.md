# 🖨️ Reinstalador de Impressoras por Nome

Este script PowerShell tem como objetivo automatizar a reinstalação de impressoras instaladas diretamente por **IP** em estações de trabalho, substituindo-as por conexões baseadas no **nome do servidor de impressão**. Essa migração é necessária devido à **desativação do protocolo NTLM** no domínio, o que impacta conexões diretas por IP em ambientes mais seguros.

---

## 🎯 Objetivo

- **Migrar impressoras instaladas via IP** para conexões por **nome de servidor**
- **Preservar a impressora padrão**, se possível
- **Remover as impressoras antigas (por IP)** após a reinstalação

---

## ⚙️ Pré-requisitos

- PowerShell 5.1 ou superior
- Permissões administrativas locais para adicionar/remover impressoras
- Acesso ao servidor de impressão (ex: `\\servername\`)


