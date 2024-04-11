
Instance: NUCC-CareTeamMemberFunction
InstanceOf: ConceptMap
Title: "NUCC to SNOMED Care Team Member Function Map"
Description: "A mapping between the US Core 3.1.1 and 6.1.0 PractitionerRole.code value sets"
Usage: #definition
* name = "NUCCCareTeamMemberFunctionMap"
* status = #active
* experimental = false
//* sourceCanonical = http://hl7.org/fhir/us/core/ValueSet/us-core-provider-role
* sourceCanonical = "http://hl7.org/fhir/us/core/ValueSet/us-core-provider-role"
* targetCanonical = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1099.30"
* group[+]
  * source = $provider-taxonomy
  * target = $sct
  * insert mapeq(#101Y00000X, [[Counselor]], #224595007, [[Professional counselor (occupation)]])
  * insert mapeq(#102L00000X, [[Psychoanalyst]], #224600003, [[Psychoanalyst (occupation)]])
  * insert nomap(#102X00000X, [[Poetry Therapist]])
  * insert mapeq(#103G00000X, [[Clinical Neuropsychologist]], #611621000124105, [[Clinical neuropsychologist (occupation)]])
  * insert nomap(#103K00000X, [[Behavior Analyst]])
  * insert mapeq(#103T00000X, [[Psychologist]], #59944000, [[Psychologist (occupation)]])
  * insert mapwide(#104100000X, [[Social Worker]], #224598009, [[Trained social worker counselor (occupation)]])
  * insert nomap(#106E00000X, [[Assistant Behavior Analyst]])
  * insert mapnarrow(#106H00000X, [[Marriage & Family Therapist]], #224596008, [[Marriage guidance counselor (occupation)]], [[Marriage & Family is more than marriage and therapist is more specific than counselor]])
  * insert nomap(#106S00000X, [[Behavior Technician]])
  * insert mapeq(#111N00000X, [[Chiropractor]], #3842006, [[Chiropractor (occupation)]])
  * insert mapeq(#122300000X, [[Dentist]], #106289002, [[Dentist (occupation)]])
  * insert mapwide(#122400000X, [[Denturist]], #59317003, [[Dental prosthesis maker and repairer (occupation)]])
  * insert mapeq(#124Q00000X, [[Dental Hygienist]], #26042002, [[Dental hygienist (occupation)]])
  * insert mapnarrow(#125J00000X, [[Dental Therapist]], #159035003, [[Dental auxiliary (occupation)]], [[Therapist is more specific than auxiliary]])
  * insert nomap(#125K00000X, [[Advanced Practice Dental Therapist]])
  * insert mapeq(#125Q00000X, [[Oral Medicinist]], #1259964002, [[Oral medicine specialist (occupation)]])
  * insert mapeq(#126800000X, [[Dental Assistant]], #4162009, [[Dental assistant (occupation)]])
  * insert mapeq(#126900000X, [[Dental Laboratory Technician]], #160008000, [[Dental technician (occupation)]])
  * insert nomap(#132700000X, [[Dietary Manager]])
  * insert mapeq(#133N00000X, [[Nutritionist]], #768827000, [[Nutritionist (occupation)]])
  * insert mapeq(#133V00000X, [[Dietitian, Registered]], #159033005, [[Dietitian (occupation)]])
  * insert nomap(#136A00000X, [[Dietetic Technician]])
  * insert nomap(#146D00000X, [[Personal Emergency Response Attendant]])
  * insert mapnarrow(#146L00000X, [[Emergency Medical Technician, Paramedic]], #453121000124107, [[Emergency department healthcare professional (occupation)]], [[Technician, paramedic is more specific than healthcare professional]])
  * insert mapnarrow(#146M00000X, [[Emergency Medical Technician, Intermediate]], #453121000124107, [[Emergency department healthcare professional (occupation)]], [[Technician, intermediate is more specific than healthcare professional]])
  * insert mapnarrow(#146N00000X, [[Emergency Medical Technician, Basic]], #453121000124107, [[Emergency department healthcare professional (occupation)]], [[Technician, basic is more specific than healthcare professional]])
  * insert mapeq(#152W00000X, [[Optometrist]], #28229004, [[Optometrist (occupation)]])
  * insert mapwide(#156F00000X, [[Technician/Technologist]], #224606009, [[Technical healthcare occupation (occupation)]])
  * insert mapeq(#163W00000X, [[Registered Nurse]], #224535009, [[Registered nurse (occupation)]])
  * insert mapeq(#164W00000X, [[Licensed Practical Nurse]], #442251000124100, [[Licensed practical nurse (occupation)]])
  * insert mapeq(#164X00000X, [[Licensed Vocational Nurse]], #442251000124100, [[Licensed practical nurse (occupation)]])
  * insert nomap(#167G00000X, [[Licensed Psychiatric Technician]])
  * insert mapnarrow(#170100000X, [[Medical Genetics, Ph.D. Medical Genetics]], #159141008, [[Geneticist (occupation)]], [[Not all PHDs in genetics will be geneticists]])
  * insert mapeq(#170300000X, [[Genetic Counselor, MS]], #310189009, [[Genetic counselor (occupation)]])
  * insert nomap(#171000000X, [[Military Health Care Provider]])
  * insert mapeq(#171100000X, [[Acupuncturist]], #450044741000087104, [[Acupuncturist (occupation)]])
  * insert mapeq(#171M00000X, [[Case Manager/Care Coordinator]], #768832004, [[Case manager (occupation)]])
  * insert mapeq(#171R00000X, [[Interpreter]], #40570005, [[Interpreter (occupation)]])
  * insert nomap(#171W00000X, [[Contractor]])
  * insert nomap(#172A00000X, [[Driver]])
  * insert nomap(#172M00000X, [[Mechanotherapist]])
  * insert nomap(#172P00000X, [[Naprapath]])
  * insert mapwide(#172V00000X, [[Community Health Worker]], #23278007, [[Community health physician (occupation)]])
  * insert mapeq(#173000000X, [[Legal Medicine]], #721940004, [[Legal medicine specialist (occupation)]])
  * insert nomap(#173C00000X, [[Reflexologist]])
  * insert mapeq(#173F00000X, [[Sleep Specialist, PhD]], #720503005, [[Sleep medicine specialist (occupation)]])
  * insert nomap(#174200000X, [[Meals]])
  * insert mapeq(#174400000X, [[Specialist]], #69280009, [[Specialized physician (occupation)]])
  * insert mapeq(#174H00000X, [[Health Educator]], #409974004, [[Health educator (occupation)]])
  * insert nomap(#174M00000X, [[Veterinarian]])
  * insert mapeq(#174N00000X, [[Lactation Consultant, Non-RN]], #225726006, [[Lactation consultant (occupation)]])
  * insert nomap(#174V00000X, [[Clinical Ethicist]])
  * insert mapeq(#175F00000X, [[Naturopath]], #1255370008, [[Specialist in naturopathy (occupation)]])
  * insert mapeq(#175L00000X, [[Homeopath]], #1255371007, [[Specialist in homeopathy (occupation)]])
  * insert mapeq(#175M00000X, [[Midwife, Lay]], #445531000124104, [[Lay midwife (occupation)]])
  * insert nomap(#175T00000X, [[Peer Specialist]])
  * insert mapwide(#176B00000X, [[Midwife]], #5191000124109, [[Private midwife (occupation)]])
  * insert nomap(#176P00000X, [[Funeral Director]])
  * insert nomap(#177F00000X, [[Lodging]])
  * insert mapeq(#183500000X, [[Pharmacist]], #46255001, [[Pharmacist (occupation)]])
  * insert mapeq(#183700000X, [[Pharmacy Technician]], #159040006, [[Pharmacy technician (occupation)]])
  * insert nomap(#193200000X, [[Multi-Specialty]])
  * insert nomap(#193400000X, [[Single Specialty]])
  * insert mapeq(#202C00000X, [[Independent Medical Examiner]], #440051000124108, [[Medical examiner (occupation)]])
  * insert nomap(#202K00000X, [[Phlebology]])
  * insert nomap(#204C00000X, [[Neuromusculoskeletal Medicine]])
  * insert nomap(#204D00000X, [[Neuromusculoskeletal Medicine & OMM]])
  * insert nomap(#204E00000X, [[Oral & Maxillofacial Surgery]])
  * insert mapeq(#204F00000X, [[Transplant Surgery]], #309385005, [[Transplant surgeon (occupation)]])
  * insert nomap(#204R00000X, [[Electrodiagnostic Medicine]])
  * insert mapeq(#207K00000X, [[Allergy & Immunology]], #721943002, [[Clinical immunology and allergy specialist (occupation)]])
  * insert mapeq(#207L00000X, [[Anesthesiology]], #88189002, [[Anesthesiologist (occupation)]])
  * insert mapeq(#207N00000X, [[Dermatology]], #18803008, [[Dermatologist (occupation)]])
  * insert mapwide(#207P00000X, [[Emergency Medicine]], #309294001, [[Emergency department physician (occupation)]])
  * insert mapeq(#207Q00000X, [[Family Medicine]], #62247001, [[Family medicine specialist (occupation)]])
  * insert mapeq(#207R00000X, [[Internal Medicine]], #39677007, [[Internal medicine specialist (occupation)]])
  * insert mapeq(#207T00000X, [[Neurological Surgery]], #45544007, [[Neurosurgeon (occupation)]])
  * insert mapeq(#207U00000X, [[Nuclear Medicine]], #80933006, [[Nuclear medicine specialist (occupation)]])
  * insert mapeq(#207V00000X, [[Obstetrics & Gynecology]], #309367003, [[Obstetrician and gynecologist (occupation)]])
  * insert mapwide(#207W00000X, [[Ophthalmology]], #159021000, [[Ophthalmic optician (occupation)]])
  * insert mapeq(#207X00000X, [[Orthopaedic Surgery]], #22731001, [[Orthopedic surgeon (occupation)]])
  * insert mapeq(#207Y00000X, [[Otolaryngology]], #309372007, [[Ear, nose and throat surgeon (occupation)]])
  * insert mapeq(#208000000X, [[Pediatrics]], #82296001, [[Pediatrician (occupation)]])
  * insert mapwide(#208100000X, [[Physical Medicine & Rehabilitation]], #309360001, [[Rehabilitation physician (occupation)]])
  * insert mapeq(#208200000X, [[Plastic Surgery]], #8724009, [[Plastic surgeon (occupation)]])
  * insert mapeq(#208600000X, [[Surgery]], #304292004, [[Surgeon (occupation)]])
  * insert mapeq(#208800000X, [[Urology]], #24590004, [[Urologist (occupation)]])
  * insert mapeq(#208C00000X, [[Colon & Rectal Surgery]], #309379003, [[Colorectal surgeon (occupation)]])
  * insert mapeq(#208D00000X, [[General Practice]], #309394004, [[General practitioner principal (occupation)]])
  * insert mapeq(#208G00000X, [[Thoracic Surgery (Cardiothoracic Vascular Surgery)]], #309369000, [[Cardiothoracic surgeon (occupation)]])
  * insert mapeq(#208M00000X, [[Hospitalist]], #768837005, [[Hospitalist (occupation)]])
  * insert mapeq(#208U00000X, [[Clinical Pharmacology]], #310173006, [[Clinical pharmacologist (occupation)]])
  * insert mapeq(#209800000X, [[Legal Medicine]], #721940004, [[Legal medicine specialist (occupation)]])
  * insert mapeq(#211D00000X, [[Assistant, Podiatric]], #309435000, [[Podiatry assistant (occupation)]])
  * insert mapeq(#213E00000X, [[Podiatrist]], #159034004, [[Podiatrist (occupation)]])
  * insert mapeq(#221700000X, [[Art Therapist]], #309410006, [[Arts therapist (occupation)]])
  * insert nomap(#222Q00000X, [[Developmental Therapist]])
  * insert mapeq(#222Z00000X, [[Orthotist]], #309428008, [[Orthotist (occupation)]])
  * insert nomap(#224900000X, [[Mastectomy Fitter]])
  * insert mapwide(#224L00000X, [[Pedorthist]], #59169001, [[Orthopedic technician (occupation)]])
  * insert mapeq(#224P00000X, [[Prosthetist]], #1276561000168102, [[Prosthetist (occupation)]])
  * insert mapnarrow(#224Y00000X, [[Clinical Exercise Physiologist]], #309349005, [[Clinical physiologist (occupation)]], [[Not all physiologists are exercise physiologists]])
  * insert mapeq(#224Z00000X, [[Occupational Therapy Assistant]], #224587008, [[Occupational therapy helper (occupation)]])
  * insert mapnarrow(#225000000X, [[Orthotic Fitter]], #309428008, [[Orthotist (occupation)]], [[Orthotists may do more than fitting]])
  * insert mapeq(#225100000X, [[Physical Therapist]], #36682004, [[Physiotherapist (occupation)]])
  * insert mapeq(#225200000X, [[Physical Therapy Assistant]], #309404006, [[Physiotherapy helper (occupation)]])
  * insert mapeq(#225400000X, [[Rehabilitation Practitioner]], #309360001, [[Rehabilitation physician (occupation)]])
  * insert nomap(#225500000X, [[Specialist/Technologist]])
  * insert mapeq(#225600000X, [[Dance Therapist]], #309411005, [[Dance therapist (occupation)]])
  * insert mapeq(#225700000X, [[Massage Therapist]], #1172950003, [[Massage therapist (occupation)]])
  * insert nomap(#225800000X, [[Recreation Therapist]])
  * insert mapeq(#225A00000X, [[Music Therapist]], #309412003, [[Music therapist (occupation)]])
  * insert nomap(#225B00000X, [[Pulmonary Function Technologist]])
  // - google tells me there are differences
  * insert mapeq(#225C00000X, [[Rehabilitation Counselor]], #309366007, [[Rehabilitation psychiatrist (occupation)]])
  * insert mapeq(#225X00000X, [[Occupational Therapist]], #80546007, [[Occupational therapist (occupation)]])
  * insert nomap(#226000000X, [[Recreational Therapist Assistant]])
  * insert nomap(#226300000X, [[Kinesiotherapist]])
  * insert mapnarrow(#227800000X, [[Respiratory Therapist, Certified]], #442867008, [[Respiratory therapist (occupation)]], [[Respiratory therapists may or may not be certified]])
  * insert mapnarrow(#227900000X, [[Respiratory Therapist, Registered]], #442867008, [[Respiratory therapist (occupation)]], [[Respiratory therapists may or may not be registered]])
  * insert nomap(#229N00000X, [[Anaplastologist]])
  * insert mapeq(#231H00000X, [[Audiologist]], #309418004, [[Audiologist (occupation)]])
  * insert nomap(#235500000X, [[Specialist/Technologist]])
  * insert mapwide(#235Z00000X, [[Speech-Language Pathologist]], #159026005, [[Speech/language therapist (occupation)]])
  * insert mapeq(#237600000X, [[Audiologist-Hearing Aid Fitter]], #309421002, [[Hearing aid dispenser (occupation)]])
  * insert nomap(#237700000X, [[Hearing Instrument Specialist]])
  * insert mapwide(#242T00000X, [[Perfusionist]], #721942007, [[Cardiovascular perfusionist (occupation)]])
  * insert nomap(#243U00000X, [[Radiology Practitioner Assistant]])
  * insert nomap(#246Q00000X, [[Specialist/Technologist, Pathology]])
  * insert nomap(#246R00000X, [[Technician, Pathology]])
  * insert nomap(#246W00000X, [[Technician, Cardiology]])
  * insert mapeq(#246X00000X, [[Specialist/Technologist Cardiovascular]], #56545009, [[Cardiovascular surgeon (occupation)]])
  * insert nomap(#246Y00000X, [[Specialist/Technologist]])
  * insert nomap(#246Z00000X, [[Specialist/Technologist]])
  * insert nomap(#247000000X, [[Technician]])
  * insert mapeq(#247100000X, [[Radiologic Technologist]], #66862007, [[Radiologist (occupation)]])
  * insert nomap(#247200000X, [[Technician]])
  * insert nomap(#251300000X, [[Local Education Agency (LEA)]])
  * insert mapeq(#251B00000X, [[Case Management]], #768832004, [[Case manager (occupation)]])
  * insert nomap(#251C00000X, [[Day Training]])
  * insert mapwide(#251E00000X, [[Home Health]], #768730001, [[Home health aide (occupation)]])
  * insert mapwide(#251F00000X, [[Home Infusion]], #453081000124105, [[Infusion pharmacist (person)]])
  * insert nomap(#251G00000X, [[Hospice Care]])
  * insert nomap(#251J00000X, [[Nursing Care]])
  * insert mapwide(#251K00000X, [[Public Health or Welfare]], #26369006, [[Public health nurse (occupation)]])
  * insert mapwide(#251S00000X, [[Community/Behavioral Health]], #23278007, [[Community health physician (occupation)]])
  * insert nomap(#251T00000X, [[Program of All-Inclusive Care for the Elderly (PACE) Provider Organization]])
  * insert nomap(#251V00000X, [[Voluntary or Charitable]])
  * insert nomap(#251X00000X, [[Supports Brokerage]])
  * insert nomap(#252Y00000X, [[Early Intervention Provider Agency]])
  * insert nomap(#253J00000X, [[Foster Care Agency]])
  * insert mapwide(#253Z00000X, [[In Home Supportive Care]], #768731002, [[Home helper (occupation)]])
  * insert nomap(#261Q00000X, [[Clinic/Center]])
  * insert nomap(#273100000X, [[Epilepsy Unit]])
  * insert nomap(#273R00000X, [[Psychiatric Unit]])
  * insert nomap(#273Y00000X, [[Rehabilitation Unit]])
  * insert nomap(#275N00000X, [[Medicare Defined Swing Bed Unit]])
  * insert nomap(#276400000X, [[Rehabilitation]])
  * insert nomap(#281P00000X, [[Chronic Disease Hospital]])
  * insert nomap(#282E00000X, [[Long Term Care Hospital]])
  * insert nomap(#282J00000X, [[Religious Nonmedical Health Care Institution]])
  * insert nomap(#282N00000X, [[General Acute Care Hospital]])
  * insert nomap(#283Q00000X, [[Psychiatric Hospital]])
  * insert nomap(#283X00000X, [[Rehabilitation Hospital]])
  * insert nomap(#284300000X, [[Special Hospital]])
  * insert nomap(#286500000X, [[Military Hospital]])
  * insert nomap(#287300000X, [[Christian Science Sanitorium]])
  * insert nomap(#291900000X, [[Military Clinical Medical Laboratory]])
  * insert nomap(#291U00000X, [[Clinical Medical Laboratory]])
  * insert nomap(#292200000X, [[Dental Laboratory]])
  * insert nomap(#293D00000X, [[Physiological Laboratory]])
  * insert nomap(#302F00000X, [[Exclusive Provider Organization]])
  * insert nomap(#302R00000X, [[Health Maintenance Organization]])
  * insert nomap(#305R00000X, [[Preferred Provider Organization]])
  * insert nomap(#305S00000X, [[Point of Service]])
  * insert nomap(#310400000X, [[Assisted Living Facility]])
  * insert nomap(#310500000X, [[Intermediate Care Facility]])
  * insert nomap(#311500000X, [[Alzheimer Center (Dementia Center)]])
  * insert nomap(#311Z00000X, [[Custodial Care Facility]])
  * insert nomap(#313M00000X, [[Nursing Facility/Intermediate Care Facility]])
  * insert nomap(#314000000X, [[Skilled Nursing Facility]])
  * insert nomap(#315D00000X, [[Hospice]])
  * insert nomap(#315P00000X, [[Intermediate Care Facility]])
  * insert nomap(#317400000X, [[Christian Science Facility]])
  * insert nomap(#320600000X, [[Residential Treatment Facility]])
  * insert nomap(#320700000X, [[Residential Treatment Facility, Physical Disabilities]])
  * insert nomap(#320800000X, [[Community Based Residential Treatment Facility]])
  * insert nomap(#320900000X, [[Community Based Residential Treatment Facility]])
  * insert nomap(#322D00000X, [[Residential Treatment Facility]])
  * insert nomap(#323P00000X, [[Psychiatric Residential Treatment Facility]])
  * insert nomap(#324500000X, [[Substance Abuse Rehabilitation Facility]])
  * insert nomap(#331L00000X, [[Blood Bank]])
  * insert nomap(#332000000X, [[Military/U.S. Coast Guard Pharmacy]])
  * insert nomap(#332100000X, [[Department of Veterans Affairs (VA) Pharmacy]])
  * insert nomap(#332800000X, [[Indian Health Service/Tribal/Urban Indian Health (I/T/U) Pharmacy]])
  * insert nomap(#332900000X, [[Non-Pharmacy Dispensing Site]])
  * insert nomap(#332B00000X, [[Durable Medical Equipment & Medical Supplies]])
  * insert nomap(#332G00000X, [[Eye Bank]])
  * insert nomap(#332H00000X, [[Eyewear Supplier]])
  * insert mapwide(#332S00000X, [[Hearing Aid Equipment]], #309421002, [[Hearing aid dispenser (occupation)]])
  * insert nomap(#332U00000X, [[Home Delivered Meals]])
  * insert nomap(#333300000X, [[Emergency Response System Companies]])
  * insert nomap(#333600000X, [[Pharmacy]])
  * insert mapeq(#335E00000X, [[Prosthetic/Orthotic Supplier]], #1276571000168108, [[Orthotist and prosthetist (occupation)]])
  * insert nomap(#335G00000X, [[Medical Foods Supplier]])
  * insert nomap(#335U00000X, [[Organ Procurement Organization]])
  * insert nomap(#335V00000X, [[Portable X-ray and/or Other Portable Diagnostic Imaging Supplier]])
  * insert nomap(#341600000X, [[Ambulance]])
  * insert nomap(#341800000X, [[Military/U.S. Coast Guard Transport]])
  * insert nomap(#343800000X, [[Secured Medical Transport (VAN)]])
  * insert nomap(#343900000X, [[Non-emergency Medical Transport (VAN)]])
  * insert nomap(#344600000X, [[Taxi]])
  * insert nomap(#344800000X, [[Air Carrier]])
  * insert nomap(#347B00000X, [[Bus]])
  * insert nomap(#347C00000X, [[Private Vehicle]])
  * insert nomap(#347D00000X, [[Train]])
  * insert nomap(#347E00000X, [[Transportation Broker]])
  * insert mapeq(#363A00000X, [[Physician Assistant]], #449161006, [[Physician assistant (occupation)]])
  * insert mapeq(#363L00000X, [[Nurse Practitioner]], #224571005, [[Nurse practitioner (occupation)]])
  * insert mapeq(#364S00000X, [[Clinical Nurse Specialist]], #224570006, [[Clinical nurse specialist (occupation)]])
  * insert mapeq(#367500000X, [[Nurse Anesthetist, Certified Registered]], #405278004, [[Certified registered nurse anesthetist (occupation)]])
  * insert mapeq(#367A00000X, [[Advanced Practice Midwife]], #445521000124102, [[Advanced practice midwife (occupation)]])
  * insert nomap(#367H00000X, [[Anesthesiologist Assistant]])
  * insert nomap(#372500000X, [[Chore Provider]])
  * insert nomap(#372600000X, [[Adult Companion]])
  * insert nomap(#373H00000X, [[Day Training/Habilitation Specialist]])
  * insert nomap(#374700000X, [[Technician]])
  * insert mapeq(#374J00000X, [[Doula]], #768825008, [[Doula (occupation)]])
  * insert mapnarrow(#374K00000X, [[Religious Nonmedical Practitioner]], #64220005, [[Religious worker (member of religious order) (occupation)]], [[Not all workers are practitioners]])
  * insert mapnarrow(#374T00000X, [[Religious Nonmedical Nursing Personnel]], #64220005, [[Religious worker (member of religious order) (occupation)]], [[Not all workers are nuring personnel]])
  * insert mapeq(#374U00000X, [[Home Health Aide]], #768730001, [[Home health aide (occupation)]])
  * insert nomap(#376G00000X, [[Nursing Home Administrator]])
  * insert nomap(#376J00000X, [[Homemaker]])
  * insert mapeq(#376K00000X, [[Nurse's Aide]], #73265009, [[Nursing aid (occupation)]])
  * insert nomap(#385H00000X, [[Respite Care]])
  * insert mapwide(#390200000X, [[Student in an Organized Health Care Education/Training Program]], #398130009, [[Medical student (occupation)]])
  * insert nomap(#405300000X, [[Prevention Professiona]])