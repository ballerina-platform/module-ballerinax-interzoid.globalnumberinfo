# Mobile Number Screening

This example screens a list of international telephone numbers and reports which of them belong to mobile devices. It is useful for cleaning contact lists before sending text messages.

## Prerequisites

- Ballerina Swan Lake 2201.12.0 or later
- An Interzoid license API key. Register at [www.interzoid.com/register](https://www.interzoid.com/register).
- Create a `Config.toml` in this directory:

  ```toml
  licenseKey = "<your Interzoid license key>"
  phoneNumbers = ["<international number 1>", "<international number 2>"]
  ```

## Run the example

```bash
bal run
```
