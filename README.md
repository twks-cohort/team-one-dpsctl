# dpsctl

Example delivery platform cli

### development

By default the cli is configured to attempt to authenticate against a production auth0 tenant ('twdpsio').  

In order to test against the dev-twdpsio auth0 tenant set the following values to the dev-tenant settings.  
```bash
export DPSCTL_IDPISSUERURL=https://dev-twdpsio.us.auth0.com/
export DPSCTL_LOGINCLIENTID=<insert dev-twdpsio dev-dpsctl application client id>
```

Be sure to login in order to obtain the correct tokens.  
