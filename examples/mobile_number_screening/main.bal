// Screens a list of international numbers and reports which ones belong to mobile devices.

import ballerina/io;
import ballerinax/interzoid.globalnumberinfo as gni;

configurable string licenseKey = ?;
configurable string[] phoneNumbers = ?;

public function main() returns error? {
    gni:Client globalNumberClient = check new ({license: licenseKey});

    string[] mobileNumbers = [];
    foreach string number in phoneNumbers {
        // Step 1: Look up each number
        gni:GlobalNumberInfo info = check globalNumberClient->getGlobalNumberInfo(intlnumber = number);

        // Step 2: Keep the numbers identified as mobile devices
        string mobile = info.mobile ?: "";
        if mobile.toLowerAscii() == "yes" {
            mobileNumbers.push(number);
        }
    }
    io:println(string `${mobileNumbers.length()} of ${phoneNumbers.length()} numbers are mobile.`);
    foreach string number in mobileNumbers {
        io:println(number);
    }
}
