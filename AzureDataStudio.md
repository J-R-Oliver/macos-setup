# Azure Data Studio

## Plugins 

### Visual Studio IntelliCode

The Visual Studio IntelliCode extension provides AI-assisted development features for SQL in Azure Data Studio. More information on the plugin can be found [here](https://github.com/MicrosoftDocs/intellicode).

### PostgreSQL

Connect, query, and manage Postgres databases with Azure Data Studio. More information on the plugin can be found [here](https://github.com/Microsoft/azuredatastudio-postgresql/).

## Settings 

```json
{
    "workbench.enablePreviewFeatures": true,
    "datasource.connectionGroups": [
        {
            "name": "ROOT",
            "id": "C777F06B-202E-4480-B475-FA416154D458"
        }
    ],
    "datasource.connections": [
        {
            "options": {
                "connectionName": "localhost",
                "host": "localhost",
                "authenticationType": "SqlLogin",
                "dbname": "",
                "user": "jamesoliver",
                "password": "",
                "applicationName": "azdata",
                "groupId": "C777F06B-202E-4480-B475-FA416154D458",
                "databaseDisplayName": ""
            },
            "groupId": "C777F06B-202E-4480-B475-FA416154D458",
            "providerName": "PGSQL",
            "savePassword": true,
            "id": "8d6ad183-b047-43cd-8ae0-0584504e8948"
        }
    ],
    "editor.suggestSelection": "first",
    "vsintellicode.modify.editor.suggestSelection": "automaticallyOverrodeDefaultValue",
    "workbench.colorTheme": "Default Dark Azure Data Studio"
}
```
