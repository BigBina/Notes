---
attachments: [Screen Shot 2021-09-27 at 3.46.43 PM.png, Screen Shot 2021-09-27 at 4.04.54 PM.png]
title: Token
created: '2021-09-26T14:21:05.804Z'
modified: '2021-09-27T21:15:28.588Z'
---

# Token
### Token Based Authentication
[Access Tokens](https://auth0.com/docs/security/tokens/access-tokens) allows an app to access the data from an API. Once the user is successfully authenticated, the app receives an access token. The passed token informs the API that the bearer of the token is now authorized to access the API and perform specific actions specified by the scope that was granted during authorization.

[Refresh Token](https://auth0.com/docs/security/tokens/refresh-tokens) allows an app to obtain a new access token without prompting the user. [(OAuth 2.0 inroducted this)](https://www.varonis.com/blog/what-is-oauth/)

#### Example
For the spotify API, Once we send receive the code from the redirect URI, we then send a post request to the grant_type to receive the access token and refresh token. <kbd>Cmd+Shift+4</kbd> *to select screenshot*

![Image](@attachment/Screen Shot 2021-09-27 at 4.04.54 PM.png)

From here, I then send a get request letting the API know that we are the Bearer of the access token and want to access some data!

![Image](@attachment/Screen Shot 2021-09-27 at 3.46.43 PM.png)

