Profile: MedComCoreMedia
Parent: Media
Id: medcom-core-media
Title: "MedComMedia"
Description: "Profile to capture relevant images,audio, video and document as part of the healthcare process"
* status MS
* identifier 1..1 MS
* identifier only MedComAssignedIdentifier
* operator 0..1 MS
* operator only Reference(MedComCorePractitioner or MedComCorePractitionerRole)
* content.data MS
* content.contentType MS
* content.contentType from $Mimetypes
* content.title 1..1 MS
* content.creation 1..1 MS
* operator obeys medcom-homecareReport-5
* operator obeys medcom-homecareReport-6


Invariant: medcom-homecareReport-5
Description: "There shall exist a practitioner role when using a PractitionerRole as author of the attached file ."
Severity: #error
Expression: "reference.resolve().code.coding.code.exists()"

Invariant: medcom-homecareReport-6
Description: "There shall exist a name of the healtcare worker that performed the observations, as author of the attached file ."
Severity: #error
Expression: "reference.resolve().practitioner.resolve().name.exists()"




Instance: cb277ee2-5d96-4762-829d-d36449b2b17f
InstanceOf: MedComCoreMedia
Usage: #example
Title: "Normal EKG"
Description: "An example of an EKG that can be sendt with an diagnostic repport"
* status = $mediastatus#completed
* operator = Reference(6ff69f1c-690d-11ed-9022-0242ac120002)
* content.title = "EKG"
* identifier.value = "urn:uuid:974e7953-4cc2-465e-bc60-b1750ff41604"
* identifier.assigner = Reference(bca68510-fe3b-4161-aba0-908a693eb54f)
* content.contentType = #image/png
* content.creation = 2023-09-13T12:08:08+00:00
* content.data = "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"