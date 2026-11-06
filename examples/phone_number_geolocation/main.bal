// Looks up a global telephone number and prints where it is registered and which languages are spoken there.

import ballerina/io;
import ballerinax/interzoid.globalnumberinfo as gni;

configurable string licenseKey = ?;
configurable string phoneNumber = ?;

public function main() returns error? {
    gni:Client globalNumberClient = check new ({license: licenseKey});

    // Step 1: Retrieve the geographic information for the number
    gni:GlobalNumberInfo info = check globalNumberClient->getGlobalNumberInfo(intlnumber = phoneNumber);

    // Step 2: Summarise the location and languages
    string country = info.country ?: "unknown country";
    string city = info.primaryCity ?: "unknown city";
    string language = info.primaryLanguage ?: "unknown language";
    io:println(string `${phoneNumber} is registered in ${city}, ${country}.`);
    io:println(string `Primary language: ${language}`);
}
