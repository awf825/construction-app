# Editing credentials
really annoying gotcha with creds. For local dev, use config/credentials/development.yml.enc

vscode finnicky with this newer process:
```
EDITOR="vim" rails credentials:edit --environment=development

And here was what I needed to track down for getting prod creds to work in heroku:
```
heroku config:set RAILS_MASTER_KEY=`cat config/credentials/production.key`