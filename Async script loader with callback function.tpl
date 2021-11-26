___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Async script loader with callback function",
  "brand": {
    "id": "brand_dummy",
    "displayName": ""
  },
  "description": "This custom template loads an external resource through an async script and executes a callback function upon doing so that pushes an event of your choice to the dataLayer.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "src",
    "displayName": "Source file url",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Entre the url of the file you want to load"
  },
  {
    "type": "TEXT",
    "name": "event",
    "displayName": "Event name you want to push to the dataLayer once the async script has been successfully loaded.",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Eg. \u0027script loaded\u0027"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

//API's needed for this template to work
const injectScript = require('injectScript');
const createQueue = require('createQueue');
const dataLayerPush = createQueue('dataLayer');

//Inject script and upon doing so, push an event to the dataLayer
injectScript(data.src, data.gtmOnSuccess(dataLayerPush({'event':data.event})), data.gtmOnFailure);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "dataLayer"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": []
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 26/11/2021 14:57:53


