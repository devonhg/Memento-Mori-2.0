{
    "id": "f4f0bc9c-fdbd-4e8c-be07-278c6b199e8e",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "GoogleAnalytics",
    "IncludedResources": [
        "Scripts\\device_get_id"
    ],
    "androidPermissions": [
        
    ],
    "androidProps": false,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": -1,
    "date": "2017-02-24 06:01:23",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "a762555f-6033-4dd2-aeac-4a1225f748b0",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 123146358329582,
            "filename": "googleanalytics.gml",
            "final": "",
            "functions": [
                {
                    "id": "cc88d45b-0c8d-400d-90b9-34475206625b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "google_analytics_init",
                    "help": "google_analytics_init(tracking,appname,version,appID)",
                    "hidden": false,
                    "kind": 11,
                    "name": "google_analytics_init",
                    "returnType": 2
                },
                {
                    "id": "9aa8abe4-3d20-4d41-91ac-59a74482c17b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "google_analytics_start",
                    "help": "google_analytics_start()",
                    "hidden": false,
                    "kind": 11,
                    "name": "google_analytics_start",
                    "returnType": 2
                },
                {
                    "id": "546aecbc-2fbb-489c-83f7-89dd4d50f625",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "google_analytics_request",
                    "help": "google_analytics_request(mapdata)",
                    "hidden": false,
                    "kind": 11,
                    "name": "google_analytics_request",
                    "returnType": 2
                },
                {
                    "id": "558c8eb7-1d66-4a9f-85b4-b9dce3c96e14",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "google_analytics_screenview",
                    "help": "google_analytics_screenview(screenname)",
                    "hidden": false,
                    "kind": 11,
                    "name": "google_analytics_screenview",
                    "returnType": 2
                },
                {
                    "id": "062c2859-75c1-420d-8d67-30262bd2fb29",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "google_analytics_event",
                    "help": "google_analytics_event(category, action[,value, label])",
                    "hidden": false,
                    "kind": 11,
                    "name": "google_analytics_event",
                    "returnType": 2
                },
                {
                    "id": "895a6d0c-5463-4ed7-9233-02f8b2903f7a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "google_analytics_time_start",
                    "help": "google_analytics_time_start(category,name)",
                    "hidden": false,
                    "kind": 11,
                    "name": "google_analytics_time_start",
                    "returnType": 2
                },
                {
                    "id": "2285ec76-2423-4ad3-830c-d24efdacbd98",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "google_analytics_time_stop",
                    "help": "google_analytics_time_stop(category,name)",
                    "hidden": false,
                    "kind": 11,
                    "name": "google_analytics_time_stop",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\googleanalytics.gml",
            "uncompress": false
        },
        {
            "id": "53b51f25-8220-4dac-97ea-6062f7340a1b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "dependant.gml",
            "final": "",
            "functions": [
                {
                    "id": "2ff8025f-bbb0-41f5-82b3-99ec5da1e72a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "isset",
                    "help": "isset(value)",
                    "hidden": false,
                    "kind": 11,
                    "name": "isset",
                    "returnType": 2
                },
                {
                    "id": "c260fc43-6fab-4492-b5ef-0a035a43dd34",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "iter",
                    "help": "iter(map[,initialize])",
                    "hidden": false,
                    "kind": 11,
                    "name": "iter",
                    "returnType": 2
                },
                {
                    "id": "146d0e18-0871-4d60-8ef1-679d1486fd7e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "iterkey",
                    "help": "iterkey(iterator)",
                    "hidden": false,
                    "kind": 11,
                    "name": "iterkey",
                    "returnType": 1
                },
                {
                    "id": "d7f10a20-54df-4a0b-8cfe-cdaa762ac245",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "iterval",
                    "help": "iterval(iterator)",
                    "hidden": false,
                    "kind": 11,
                    "name": "iterval",
                    "returnType": 1
                },
                {
                    "id": "9a951dda-e244-4885-bfa8-c032fc13fceb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "dm",
                    "help": "dm(index,value[,index,value,...,...])",
                    "hidden": false,
                    "kind": 11,
                    "name": "dm",
                    "returnType": 2
                },
                {
                    "id": "ea8fc48d-aa70-4071-9e74-74b053b125d4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "url_encode",
                    "help": "url_encode(string)",
                    "hidden": false,
                    "kind": 11,
                    "name": "url_encode",
                    "returnType": 1
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\dependancies.gml",
            "uncompress": false
        },
        {
            "id": "6e4d5731-5dee-4fd3-bd86-a73df7d7e9d8",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "README.TXT",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "extensions\\README.TXT",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "me.eladga.googleanalytics",
    "productID": "ACBD3CFF4E539AD869A0E8E3B4B022DD",
    "sourcedir": "",
    "version": "1.0.0"
}