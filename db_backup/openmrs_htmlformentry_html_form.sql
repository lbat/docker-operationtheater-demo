CREATE DATABASE  IF NOT EXISTS `openmrs` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `openmrs`;
-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: openmrs
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `htmlformentry_html_form`
--

DROP TABLE IF EXISTS `htmlformentry_html_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `htmlformentry_html_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `xml_data` mediumtext NOT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0002-11-30 00:00:00',
  `changed_by` int(11) DEFAULT NULL,
  `date_changed` datetime DEFAULT NULL,
  `retired` tinyint(1) NOT NULL DEFAULT '0',
  `uuid` char(38) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `retired_by` int(11) DEFAULT NULL,
  `date_retired` datetime DEFAULT NULL,
  `retire_reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `htmlformentry_html_form_uuid_index` (`uuid`),
  KEY `User who created htmlformentry_htmlform` (`creator`),
  KEY `Form with which this htmlform is related` (`form_id`),
  KEY `User who changed htmlformentry_htmlform` (`changed_by`),
  KEY `user_who_retired_html_form` (`retired_by`),
  CONSTRAINT `Form with which this htmlform is related` FOREIGN KEY (`form_id`) REFERENCES `form` (`form_id`),
  CONSTRAINT `User who changed htmlformentry_htmlform` FOREIGN KEY (`changed_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `User who created htmlformentry_htmlform` FOREIGN KEY (`creator`) REFERENCES `users` (`user_id`),
  CONSTRAINT `user_who_retired_html_form` FOREIGN KEY (`retired_by`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `htmlformentry_html_form`
--

LOCK TABLES `htmlformentry_html_form` WRITE;
/*!40000 ALTER TABLE `htmlformentry_html_form` DISABLE KEYS */;
INSERT INTO `htmlformentry_html_form` VALUES (1,1,NULL,'<!--\n  ~ The contents of this file are subject to the OpenMRS Public License\n  ~ Version 1.0 (the \"License\"); you may not use this file except in\n  ~ compliance with the License. You may obtain a copy of the License at\n  ~ http://license.openmrs.org\n  ~\n  ~ Software distributed under the License is distributed on an \"AS IS\"\n  ~ basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the\n  ~ License for the specific language governing rights and limitations\n  ~ under the License.\n  ~\n  ~ Copyright (C) OpenMRS, LLC.  All Rights Reserved.\n  -->\n\n<htmlform formUuid=\"a000cb34-9ec1-4344-a1c8-f692232f6edd\" formName=\"Vitals\" formEncounterType=\"67a71486-1a54-468f-ac3e-7091a9a79584\" formVersion=\"1.0\">\n    <style>\n        #calculated-bmi {\n            font-weight: bold;\n            font-size: 1.4em;\n        }\n\n        .encounter-summary-container #calculated-bmi {\n            font-size: 1em;\n            font-weight: normal;\n        }\n    </style>\n\n    <!-- only show BMI if patient is more than 5 years old (on the encounterDate) -->\n    <includeIf velocityTest=\"$patient.getAge($encounter.getEncounterDatetime()) > 5\">\n\n        <script type=\"text/javascript\">\n            var calculateBmi = function(wt, ht) {\n                var bmi = null\n                if (wt &amp;&amp; ht) {\n                    bmi = wt / ((ht/100) * (ht/100));\n                }\n                return bmi ;\n            }\n        </script>\n\n        <ifMode mode=\"ENTER\">\n            <script type=\"text/javascript\">\n\n                // functions to handle updating the bmi when in ENTER mode\n                var updateBmi = function() {\n                    var wt = htmlForm.getValueIfLegal(\'weight.value\');\n                    var ht = htmlForm.getValueIfLegal(\'height.value\');\n\n                    var bmi = calculateBmi(wt, ht);\n\n                    if (bmi == null || isNaN(bmi)) {\n                        jq(\'#calculated-bmi-wrapper\').hide();\n                    } else {\n                        jq(\'#no-calculated-bmi\').hide();\n                        jq(\'#calculated-bmi-wrapper\').show();\n                        jq(\'#calculated-bmi\').html(bmi.toFixed(1));\n                        jq(\'#hidden-calculated-bmi\').val(bmi.toFixed(1));\n                    }\n                };\n\n                jq(function() {\n                    jq(\'#calculated-bmi-wrapper\').hide();\n\n                    getField(\'weight.value\').change(updateBmi)\n                    getField(\'height.value\').change(updateBmi);\n\n                    updateBmi();\n                });\n                \n                jq(function() {\n				    jq(\'#bp_systolic input[type=text]\').attr(\'min\', \'50\');\n				});\n				\n				jq(function() {\n				    jq(\'#bp_diastolic input[type=text]\').attr(\'min\', \'30\');\n				});\n            </script>\n        </ifMode>\n\n        <script>\n            // set the blood pressure fields as \"expected\"\n            jq(function() {\n                jq(\'#bp_systolic > input\').addClass(\'expected\');\n                jq(\'#bp_diastolic > input\').addClass(\'expected\');\n            });\n        </script>\n\n        <ifMode mode=\"VIEW\">\n            <script type=\"text/javascript\">\n\n                // handle displaying the bmi when in VIEW mode\n                jq(function() {\n\n                    // we have to iterate through in case there are multiple vitals forms\n                    // displayed on a single page\n\n                    jq(\'htmlform\').each(function(index, form) {\n                        jq(form).find(\'#calculated-bmi-continue\').hide();\n                        jq(form).find(\'#no-calculated-bmi\').hide();\n\n                        var wt = jq(form).find(\'#weight\').find(\'.value\').text();\n                        var ht = jq(form).find(\'#height\').find(\'.value\').text();\n\n                        var bmi = calculateBmi(wt, ht);\n\n                        if (bmi != null &amp;&amp; !isNaN(bmi)) {\n                            jq(form).find(\'#calculated-bmi-wrapper\').show();\n                            jq(form).find(\'#calculated-bmi\').html(bmi.toFixed(1));\n                            jq(form).find(\'#hidden-calculated-bmi\').val(bmi.toFixed(1));\n                        }\n                    });\n\n                });\n\n            </script>\n        </ifMode>\n\n    </includeIf>\n\n    <div class=\"hidden\" id=\"encounter-details\" sectionTag=\"section\" headerStyle=\"title\" headerLabel=\"Encounter Details\">\n        <fieldset>\n            <legend>When?</legend>\n            <label>When?</label>\n\n            <encounterDate default=\"now\" showTime=\"false\"/>\n        </fieldset>\n\n        <fieldset>\n            <legend>Who?</legend>\n            <label>Who?</label>\n\n            <encounterProviderAndRole default=\"currentUser\" encounterRole=\"240b26f9-dd88-4172-823d-4a8bfeb7841f\" required=\"true\"/>\n        </fieldset>\n\n        <fieldset>\n            <legend>Where?</legend>\n            <label>Where?</label>\n\n            <encounterLocation default=\"SessionAttribute:emrContext.sessionLocationId\"/>\n        </fieldset>\n    </div>\n\n    <section id=\"vitals\" sectionTag=\"section\" headerStyle=\"title\" headerCode=\"referenceapplication.vitals.title\">\n        <fieldset>\n            <legend><lookup expression=\"fn.getConcept(\'CIEL:5090\').name\"/></legend>\n            <h3><lookup expression=\"fn.getConcept(\'CIEL:5090\').name\"/></h3>\n            \n            <p class=\"left\">\n                <obs conceptId=\"CIEL:5090\" id=\"height\" showUnits=\"uicommons.units.centimeters\" unitsCssClass=\"append-to-value\"/>\n            </p>\n\n        </fieldset>\n\n        <fieldset>\n            <legend><lookup expression=\"fn.getConcept(\'CIEL:5089\').name\"/></legend>\n            <h3><lookup expression=\"fn.getConcept(\'CIEL:5089\').name\"/></h3>\n\n            <p class=\"left\">\n                <obs conceptId=\"CIEL:5089\" id=\"weight\" showUnits=\"uicommons.units.kilograms\" unitsCssClass=\"append-to-value\"/>\n            </p>\n\n        </fieldset>\n\n        <!-- only show BMI if patient is more than 5 years old (on the encounterDate) -->\n        <includeIf velocityTest=\"$patient.getAge($encounter.getEncounterDatetime()) > 5\">\n\n            <fieldset>\n                <legend><uimessage code=\"referenceapplication.vitals.bmi.title\"/></legend>\n                <h3><uimessage code=\"referenceapplication.vitals.bmi.title\"/></h3>\n\n                <span id=\"no-calculated-bmi\">\n                    <uimessage code=\"referenceapplication.vitals.bmi.instructions\"/>\n                </span>\n                <span id=\"calculated-bmi-wrapper\">\n                    <ifMode mode=\"VIEW\" include=\"false\">\n                        <uimessage code=\"referenceapplication.vitals.bmi.display\"/>\n                    </ifMode>\n                    <span id=\'calculated-bmi\'></span>\n                </span>\n\n                <p id=\"calculated-bmi-continue\">\n                    <input type=\"hidden\" name=\"focus-in-bmi-question\" id=\"hidden-calculated-bmi\" />\n                    <uimessage code=\"referenceapplication.vitals.calculatedField.continue\"/>\n                </p>\n            </fieldset>\n\n        </includeIf>\n\n        <fieldset>\n            <legend><lookup expression=\"fn.getConcept(\'CIEL:5088\').name\"/></legend>\n            <h3><lookup expression=\"fn.getConcept(\'CIEL:5088\').name\"/></h3>\n            \n            <p class=\"left\">\n                <obs conceptId=\"CIEL:5088\" id=\"temperature\" showUnits=\"uicommons.units.degreesCelsius\" unitsCssClass=\"append-to-value\"/>\n            </p>\n\n        </fieldset>\n\n        <fieldset>\n            <legend><lookup expression=\"fn.getConcept(\'CIEL:5087\').name\"/></legend>\n            <h3><lookup expression=\"fn.getConcept(\'CIEL:5087\').name\"/></h3>\n\n            <p>\n                <obs conceptId=\"CIEL:5087\" id=\"heart_rate\" showUnits=\"uicommons.units.perMinute\" unitsCssClass=\"append-to-value\"/>\n            </p>\n        </fieldset>\n\n        <fieldset>\n            <legend><lookup expression=\"fn.getConcept(\'CIEL:5242\').name\"/></legend>\n            <h3><lookup expression=\"fn.getConcept(\'CIEL:5242\').name\"/></h3>\n\n            <p>\n                <obs conceptId=\"CIEL:5242\" id=\"respiratory_rate\" showUnits=\"uicommons.units.perMinute\" unitsCssClass=\"append-to-value\"/>\n            </p>\n        </fieldset>\n\n        <fieldset field-separator=\" / \">\n            <legend><uimessage code=\"referenceapplication.vitals.bloodPressure.title\"/></legend>\n            <h3><uimessage code=\"referenceapplication.vitals.bloodPressure.title\"/></h3>\n\n            <p class=\"left\">\n                <obs conceptId=\"CIEL:5085\" id=\"bp_systolic\"/>\n            </p>\n            <p class=\"left\">\n                /\n            </p>\n            <p class=\"left\">\n                <obs conceptId=\"CIEL:5086\" id=\"bp_diastolic\"/>\n            </p>\n        </fieldset>\n\n        <fieldset>\n            <legend><lookup expression=\"fn.getConcept(\'CIEL:5092\').name\"/></legend>\n            <h3><lookup expression=\"fn.getConcept(\'CIEL:5092\').name\"/></h3>\n\n            <p>\n                <obs conceptId=\"CIEL:5092\" id=\"o2_sat\" showUnits=\"uicommons.units.percent\" unitsCssClass=\"append-to-value\"/>\n            </p>\n        </fieldset>\n\n\n        <!-- only show BMI if patient is less than 13 years old (on the encounterDate) -->\n        <includeIf velocityTest=\"13 > $patient.getAge($encounter.getEncounterDatetime())\">\n            <fieldset>\n                <legend><lookup expression=\"fn.getConcept(\'CIEL:1343\').name\"/></legend>\n                <h3><lookup expression=\"fn.getConcept(\'CIEL:1343\').name\"/></h3>\n\n                <p>\n                    <obs conceptId=\"CIEL:1343\" id=\"muac\" showUnits=\"uicommons.units.millimeters\" unitsCssClass=\"append-to-value\"/>\n                </p>\n            </fieldset>\n        </includeIf>\n\n\n    </section>\n\n    <submit/>\n\n</htmlform>',2,'2014-06-12 15:12:06',NULL,NULL,0,'e13c0ffc-27d8-456c-a53a-1b5caf0d7f6a',NULL,NULL,NULL,NULL),(2,2,NULL,'<htmlform formUuid=\"c75f120a-04ec-11e3-8780-2b40bef9a44b\" formName=\"Visit Note\" formEncounterType=\"d7151f82-c1f3-4152-a605-2f9ea7414a79\" formVersion=\"1.0\">\n\n    <style type=\"text/css\">\n        #who-when-where {\n            margin-bottom: 6px;\n            border-bottom: 1px solid #ccc;\n        }\n\n        #who-when-where p {\n            display: inline-block;\n            padding-right: 20px;\n        }\n\n        #where > input[type=text] {\n            display: inline-block;\n        }\n\n        .field-error {\n            color: #ff6666;\n            font-size: 1.1em;\n            display: block;\n        }\n\n        <ifMode mode=\"VIEW\" include=\"false\">\n            #data-collection {\n                display: inline-block;\n                width: 58%;\n                vertical-align: top;\n            }\n\n            #encounter-diagnoses-target {\n                display: inline-block;\n                width: 40%;\n                vertical-align: top;\n            }\n\n            #encounter-diagnoses-app {\n                margin-bottom: 20px;\n            }\n        </ifMode>\n    </style>\n\n    <ifMode mode=\"VIEW\" include=\"false\">\n        <h2><uimessage code=\"referenceapplication.visitNote.title\"/></h2>\n\n        <div id=\"who-when-where\">\n            <p id=\"who\">\n                <label><uimessage code=\"coreapps.patientDashBoard.provider\"/></label>\n                <span><encounterProvider default=\"currentUser\" required=\"true\"  /></span>\n            </p>\n            <p id=\"when\">\n                <label><uimessage code=\"coreapps.patientDashBoard.location\"/></label>\n                <span><encounterLocation default=\"SessionAttribute:emrContext.sessionLocationId\"/></span>\n            </p>\n            <p id=\"where\">\n                <label><uimessage code=\"coreapps.patientDashBoard.date\"/></label>\n                <span><encounterDate id=\"encounterDate\" default=\"now\" /></span>\n            </p>\n        </div>\n    </ifMode>\n\n    <div id=\"data-collection\">\n\n        <encounterDiagnoses required=\"true\" selectedDiagnosesTarget=\"#encounter-diagnoses-target\"/>\n\n        <p>\n            <label><uimessage code=\"coreapps.consult.freeTextComments\"/></label>\n            <obs conceptId=\"CIEL:162169\" style=\"textarea\" rows=\"5\"/>\n        </p>\n\n    </div>\n\n    <div id=\"encounter-diagnoses-target\">\n    </div>\n\n    <ifMode mode=\"VIEW\" include=\"false\">\n        <div id=\"buttons\">\n            <submit submitClass=\"confirm right\" submitCode=\"general.save\"/>\n            <button type=\"button\" class=\"cancel\"><uimessage code=\"general.cancel\"/></button>\n        </div>\n    </ifMode>\n\n</htmlform>',2,'2014-06-12 15:12:06',NULL,NULL,0,'e563860b-ee8b-4410-bee7-4abc2fc8842f',NULL,NULL,NULL,NULL),(3,3,NULL,'<htmlform formUuid=\"d2c7532c-fb01-11e2-8ff2-fd54ab5fdb2a\" formName=\"Admission (Simple)\" formEncounterType=\"e22e39fd-7db2-45e7-80f1-60fa0d5a4378\" formVersion=\"1.0\">\n\n    <script type=\"text/javascript\">\n        $(function() {\n            $(\'#location-container select\').focus();\n        });\n    </script>\n\n    <h2><label><uimessage code=\"referenceapplication.simpleAdmission.title\"/></label></h2>\n\n    <section id=\"admission\">\n        <p>\n            <label><uimessage code=\"referenceapplication.simpleAdmission.admissionDate\"/></label>\n            <encounterDate id=\"encounterDate\" showTime=\"false\" default=\"now\"/>\n        </p>\n\n        <p>\n            <label><uimessage code=\"referenceapplication.simpleAdmission.admittingClinician\"/></label>\n            <encounterProviderAndRole default=\"currentUser\" encounterRole=\"1\" required=\"true\"/>\n        </p>\n\n        <p id=\"location-container\">\n            <label><uimessage code=\"referenceapplication.simpleAdmission.admittedTo\"/></label>\n            <encounterLocation required=\"true\" tags=\"Admission Location\"/>\n        </p>\n    </section>\n\n    <submit submitClass=\"confirm right\" submitCode=\"uicommons.saveForm\" />\n\n    <ifMode mode=\"VIEW\" include=\"false\">\n        <button class=\"cancel\"><uimessage code=\"uicommons.cancelForm\"/></button>\n    </ifMode>\n\n</htmlform>',2,'2014-06-12 15:12:06',NULL,NULL,0,'7cdbaa1c-556d-4980-ac00-bc083139d9de',NULL,NULL,NULL,NULL),(4,4,NULL,'<htmlform formUuid=\"b5f8ffd8-fbde-11e2-8ff2-fd54ab5fdb2a\" formName=\"Discharge (Simple)\" formEncounterType=\"181820aa-88c9-479b-9077-af92f5364329\" formVersion=\"1.0\">\n\n    <script type=\"text/javascript\">\n        $(function() {\n            $(\'#location-container select\').focus();\n        });\n    </script>\n\n    <h2><label><uimessage code=\"referenceapplication.simpleDischarge.title\"/></label></h2>\n\n    <section id=\"discharge\">\n        <p>\n            <label><uimessage code=\"referenceapplication.simpleDischarge.dischargeDate\"/></label>\n            <encounterDate id=\"encounterDate\" showTime=\"false\" default=\"now\"/>\n        </p>\n\n        <p>\n            <label><uimessage code=\"referenceapplication.simpleDischarge.dischargingClinician\"/></label>\n            <encounterProviderAndRole default=\"currentUser\" encounterRole=\"1\" required=\"true\"/>\n        </p>\n\n        <p id=\"location-container\">\n            <label><uimessage code=\"referenceapplication.simpleDischarge.dischargedFrom\"/></label>\n            <encounterLocation required=\"true\"/>\n        </p>\n    </section>\n\n    <submit submitClass=\"confirm right\" submitCode=\"uicommons.saveForm\" />\n\n    <ifMode mode=\"VIEW\" include=\"false\">\n        <button class=\"cancel\"><uimessage code=\"uicommons.cancelForm\"/></button>\n    </ifMode>\n\n</htmlform>',2,'2014-06-12 15:12:06',NULL,NULL,0,'7e968dca-4961-4306-bcd1-ad0765caeb64',NULL,NULL,NULL,NULL),(5,5,NULL,'<htmlform formUuid=\"a007bbfe-fbe5-11e2-8ff2-fd54ab5fdb2a\" formName=\"Transfer Within Hospital (Simple)\" formEncounterType=\"7b68d557-85ef-4fc8-b767-4fa4f5eb5c23\" formVersion=\"1.0\">\n\n    <script type=\"text/javascript\">\n        $(function() {\n            $(\'#location-container select\').focus();\n        });\n    </script>\n\n    <h2><label><uimessage code=\"referenceapplication.simpleTransfer.title\"/></label></h2>\n\n    <section id=\"discharge\">\n        <p>\n            <label><uimessage code=\"referenceapplication.simpleTransfer.transferDate\"/></label>\n            <encounterDate id=\"encounterDate\" showTime=\"false\" default=\"now\"/>\n        </p>\n\n        <p>\n            <label><uimessage code=\"referenceapplication.simpleTransfer.transferringClinician\"/></label>\n            <encounterProviderAndRole default=\"currentUser\" encounterRole=\"1\" required=\"true\"/>\n        </p>\n\n        <p id=\"location-container\">\n            <label><uimessage code=\"referenceapplication.simpleTransfer.transferTo\"/></label>\n            <encounterLocation required=\"true\" tags=\"Transfer Location\"/>\n        </p>\n    </section>\n\n    <submit submitClass=\"confirm right\" submitCode=\"uicommons.saveForm\" />\n\n    <ifMode mode=\"VIEW\" include=\"false\">\n        <button class=\"cancel\"><uimessage code=\"uicommons.cancelForm\"/></button>\n    </ifMode>\n\n</htmlform>',2,'2014-06-12 15:12:06',NULL,NULL,0,'13f1f266-2dad-42bc-916b-007aea820e72',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `htmlformentry_html_form` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-14 17:59:26