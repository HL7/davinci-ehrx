The response from a successful $member-match will contain the `MemberPatient` and `NewCoverage` resources submitted with the request.  The `MemberPatient` resource **SHALL** contain an ADDITIONAL unique member identifier, type 'UMB', in `Patient.identifier` representing the member record in the old Health Plan.

The response from a failed $member-match is a "422 Unprocessable Entity Status Code".

After a successful $member-match the new Health Plan **SHALL** then use the UMB provided by the Old Health Plan in the Patient.identifer field in any subsequent transactions related to payer-to-payer exchange.

For example, in PDex the new health plan will subsequently use the UMB identifier to request the member’s health records. This can be done by querying the US Core FHIR profile endpoints which will be constrained to the identified member. Alternatively the new health plan can perform a $everything operation to the Patient/{ID}/$everything operation endpoint to receive a bundle of the member’s health records.

For PCDE, the new health plan will subsequently use the UMB identifier to send a Task message and request the PCDE coverage transition bundle.

#### Member matching Logic
This specification does not define the member matching logic that is used by a Payer that processes a $member-match operation.

The specification is:
* Only a SINGLE unique match **SHALL** be returned.
* No match **SHALL** return a 422 status code.
* Multiple matches **SHALL** return a 422 status code.

An important objective of this specification is to ensure that a Health Plan operating a $member-match operation has sufficient data provided to enable a match operation to be performed.  Therefore the specification requires a Health Plan to provide demographic information (name, date of birth, gender) and identification details that would be present on a member's Health Plan insurance card with a request.

#### $member-match Parameter Example
Example request: $member-match Parameter resource submitted by the new health plan. Note the Patient identifier type set to "MB".
$member-match accepts a POST with the Parameters json bundle in the body.

```
{
    "resourceType": "Parameters",
    "parameter": [
        {
            "name": "MemberPatient",
            "resource": {
                "resourceType": "Patient",
                "id": "1",
                "identifier": [
                    {
                        "type": {
                            "coding": [
                                {
                                    "system": "http://hl7.davinci.org",
                                    "code": "MB"
                                }
                            ]
                        },
                        "system": "http://oldhealthplan.example.com",
                        "value": "55678",
                        "assigner": {
                            "reference": "Organization/2",
                            "_reference": {
                                "fhir_comments": [
                                    "MB is passed from coverage card by new health plan."
                                ]
                            }
                        }
                    }
                ],
                "name": [
                    {
                        "use": "official",
                        "family": "Person",
                        "given": [
                            "Patricia",
                            "Ann"
                        ]
                    }
                ],
                "gender": "female",
                "birthDate": "1974-12-25"
            }
        },
        {
            "name": "OldCoverage",
            "resource": {
                "resourceType": "Coverage",
                "id": "9876B1",
                "text": {
                    "status": "generated",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the coverage</div>"
                },
                "contained": [
                    {
                        "resourceType": "Organization",
                        "id": "Organization/2",
                        "name": "Old Health Plan",
                        "endpoint": [
                            {
                                "reference": "http://www.oldhealthplan.com"
                            }
                        ]
                    }
                ],
                "identifier": [
                    {
                        "system": "http://oldhealthplan.example.com",
                        "value": "DH10001235"
                    }
                ],
                "status": "draft",
                "beneficiary": {
                    "reference": "Patient/4"
                },
                "period": {
                    "start": "2011-05-23",
                    "end": "2012-05-23"
                },
                "payor": [
                    {
                        "reference": "#Organization/2"
                    }
                ],
                "class": [
                    {
                        "type": {
                            "coding": [
                                {
                                    "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                                    "code": "group"
                                }
                            ]
                        },
                        "value": "CB135"
                    },
                    {
                        "type": {
                            "coding": [
                                {
                                    "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                                    "code": "plan"
                                }
                            ]
                        },
                        "value": "B37FC"
                    },
                    {
                        "type": {
                            "coding": [
                                {
                                    "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                                    "code": "subplan"
                                }
                            ]
                        },
                        "value": "P7"
                    },
                    {
                        "type": {
                            "coding": [
                                {
                                    "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                                    "code": "class"
                                }
                            ]
                        },
                        "value": "SILVER"
                    }
                ]
            }
        },
            {
        "name": "NewCoverage",
        "resource": {
          "resourceType": "Coverage",
          "id": "AA87654",
          "contained": [
              {
                "resourceType" : "Organization",
                "id" : "Organization/3",
                "name" : "New Health Plan",
                "endpoint" : [
                  {
                    "reference" : "http://www.newhealthplan.com"
                  }
                ]
              }
            ],
            "identifier": [
            {
              "system": "http://newealthplan.example.com",
              "value": "234567"
            }
          ],
          "status": "active",
          "beneficiary": {
            "reference": "Patient/1"
          },
          "period": {
            "start": "2020-04-01",
            "end": "2021-03-31"
          },
          "payor": [
            {
              "reference": "#Organization/3"
            }
          ],
          "class": [
            {
              "type": {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                    "code": "group"
                  }
                ]
              },
              "value": "A55521",
              "name": "New Health Plan Group"
            },
            {
              "type": {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                    "code": "subgroup"
                  }
                ]
              },
              "value": "456"
            },
            {
              "type": {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                    "code": "plan"
                  }
                ]
              },
              "value": "99012"
            },
            {
              "type": {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                    "code": "subplan"
                  }
                ]
              },
              "value": "A4"
            },
            {
              "type": {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                    "code": "class"
                  }
                ]
              },
              "value": "GOLD"
            }
          ]
        }
      }
    ]
}
```

#### Parameter Response
```
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "MemberPatient",
      "resource": {
        "resourceType": "Patient",
        "id": "1",
        "identifier": [
          {
            "type": {
              "coding": [
                {
                  "system": "http://hl7.davinci.org",
                  "code": "MB"
                }
              ]
            },
            "system": "http://oldhealthplan.example.com",
            "value": "55678",
            "assigner": {
              "reference": "Organization/2",
              "_reference": {
                "fhir_comments": [
                  "MB is passed from coverage card by new health plan."
                ]
              }
            }
          },
          {
            "use": "usual",
            "type": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code": "UMB",
                  "display": "Member Number",
                  "userSelected": false
                }
              ],
              "text": "Member Number"
            },
            "system": "https://old.payer.example.com/diamond-health-ppo/uniquemember",
            "value": "dhu-10102"
          }
        ],
        "name": [
          {
            "use": "official",
            "family": "Person",
            "given": [
              "Patricia",
              "Ann"
            ]
          }
        ],
        "gender": "female",
        "birthDate": "1974-12-25"
      }
    },
    {
      "name": "NewCoverage",
      "resource": {
        "resourceType": "Coverage",
        "id": "AA87654",
        "contained": [
          {
            "resourceType": "Organization",
            "id": "Organization/3",
            "name": "New Health Plan",
            "endpoint": [
              {
                "reference": "http://www.newhealthplan.com"
              }
            ]
          }
        ],
        "identifier": [
          {
            "system": "http://newealthplan.example.com",
            "value": "234567"
          }
        ],
        "status": "active",
        "beneficiary": {
          "reference": "Patient/1"
        },
        "period": {
          "start": "2020-04-01",
          "end": "2021-03-31"
        },
        "payor": [
          {
            "reference": "#Organization/3"
          }
        ],
        "class": [
          {
            "type": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                  "code": "group"
                }
              ]
            },
            "value": "A55521",
            "name": "New Health Plan Group"
          },
          {
            "type": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                  "code": "subgroup"
                }
              ]
            },
            "value": "456"
          },
          {
            "type": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                  "code": "plan"
                }
              ]
            },
            "value": "99012"
          },
          {
            "type": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                  "code": "subplan"
                }
              ]
            },
            "value": "A4"
          },
          {
            "type": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                  "code": "class"
                }
              ]
            },
            "value": "GOLD"
          }
        ]
      }
    }
  ]
}
```
