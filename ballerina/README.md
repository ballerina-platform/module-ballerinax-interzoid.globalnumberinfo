## Overview

The Interzoid Global Number Info connector lets Ballerina applications look up geographic and device details for an international telephone number. For a given number it returns the country, region and primary city, the primary languages spoken, and whether the number belongs to a mobile device.

This connector supports version 1.0.0 of the Interzoid Get Global Phone Number Information API.

### Key features

- Look up the country, region and primary city of an international telephone number
- Identify the primary languages spoken for a number's location
- Detect whether a number belongs to a mobile device

## Setup guide

To use the connector you need an Interzoid license API key.

1. Register for an account at [Interzoid](https://www.interzoid.com/register).

2. Copy the license API key from your Interzoid account.

3. Supply the key as the `license` field of the connector's `ApiKeysConfig` when you create the client.

## Quickstart

To use the `interzoid.globalnumberinfo` connector in your Ballerina application, update the `.bal` file as follows:

### Step 1: Import the module

```ballerina
import ballerinax/interzoid.globalnumberinfo as gni;
```

### Step 2: Instantiate a new connector

Create a `Config.toml` file with your license key:

```toml
licenseKey = "<your Interzoid license key>"
```

Then create a `gni:Client` with the key:

```ballerina
configurable string licenseKey = ?;

final gni:Client globalNumberClient = check new ({license: licenseKey});
```

### Step 3: Invoke the connector operation

```ballerina
public function main() returns error? {
    gni:GlobalNumberInfo _ = check globalNumberClient->getGlobalNumberInfo(intlnumber = "+14155552671");
}
```

### Step 4: Run the Ballerina application

```bash
bal run
```

## Examples

The `Interzoid Global Number Info` connector provides practical examples illustrating usage in various scenarios. Explore these [examples](../examples/), covering the following use cases:

1. [Phone number geolocation](../examples/phone_number_geolocation/phone_number_geolocation.md) - Look up the city, country and primary language of a telephone number.
2. [Mobile number screening](../examples/mobile_number_screening/mobile_number_screening.md) - Screen a list of numbers and report which ones are mobile.
