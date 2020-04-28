# wit_ai

This is a simple client that makes API requests to your [Wit.ai](https://wit.ai/) app.

[Wit.ai](https://wit.ai/) is an NLP tool for developers. It makes it easy for developers to build applications and devices that you can talk or text to.

Currently this package supports the "message" feature of Wit.ai.
If you would like more features, please open a ticket with the **enhancement** label.

## Usage

Using this client is very simple. Start by importing the package into your class

```
import 'package:wit_ai/wit_ai.dart';
```

Next, create a Wit object with your access token:

```
final wit = Wit(accessToken: ACCESS_TOKEN_HERE);
```
NOTE: The access token can be found in the **Settings** tab on your wit.ai console.
It should be titled **Client Access Token**.

### message()

The message method takes a String input to send to your Wit app. It returns a dynamic object.

```
final wit = Wit(accessToken: ACCESS_TOKEN_HERE); // New Wit object

dynamic response = await wit.message("Hello");
```
The message method returns a JSON decoded response, so you can call a specific key directly without a hassle.

Example of a response from Wit:

```
{
    "msg_id" : "dd526480-5784-43fa-a0f9-a3587fadc95d",
    "_text" : "temperature",
    "stats" : {
      "total_time" : 185
    },
    "entities" : {
      "intent" : [ {
        "confidence" : 0.6081958281101719,
        "value" : "temperature_get"
      }, {
        "confidence" : 0.3918041718898281,
        "value" : "temperature_set"
      } ]
    }
  }
```

Getting entities from the response:

```
print(response['entities']);
```

## Flutter

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
