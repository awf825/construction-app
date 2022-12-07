# Editing credentials
really annoying gotcha with creds. For local dev, use config/credentials/development.yml.enc

vscode finnicky with this newer process:
```
EDITOR="vim" rails credentials:edit --environment=development