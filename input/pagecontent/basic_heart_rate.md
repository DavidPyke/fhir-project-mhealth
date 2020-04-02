The Basic Heart Rate category supports the measurement of the user's heart rate (a.k.a. pulse).
Technically, pulse is an effect measured in blood vessels as a result of contractions of the heart
(heart rate).  Some devices measure pulse (e.g., smart watches using optical sensors), others
measure heart rate using electrical sensors on the chest.  For the purposes of this specification,
these will all be considered to be measures of the heart rate.
<span id='heart-rate-measurement'/>
### <span class='glyphicon glyphicon-phone'/> <span class='glyphicon glyphicon-dashboard'/> <span class='glyphicon glyphicon-cloud'/> Feature: Heart Rate Measurement

The system **SHALL** be able to capture and report a heart rate measurement from the user.


<span id='capture-and-report-heart-rate-measurement'/>
#### <span class='glyphicon text-success glyphicon-phone'/> <span class='glyphicon text-success glyphicon-dashboard'/> <span class='glyphicon text-success glyphicon-cloud'/> Scenario: Capture And Report Heart Rate Measurement


GIVEN
: a <i>&lt;System&gt;</i> (App or Infrastructure) that can work with a <i>&lt;Device&gt;</i>

   AND
   : a <i>&lt;User&gt;</i> of that <i>&lt;System&gt;</i>

   AND
   : the <i>&lt;Heart Rate&gt;</i> of that <i>&lt;User&gt;</i>

WHEN
: the <i>&lt;System&gt;</i> is operational

THEN
: the device can capture a <i>&lt;Measurement&gt;</i> in the <i>&lt;System&gt;</i> associated with <i>&lt;User&gt;</i> that contains that user's <i>&lt;Heart Rate&gt;</i>

   AND
   : that <i>&lt;Measurement&gt;</i> has units that are beats / minute

   AND
   : the precision of that <i>&lt;Measurement&gt;</i> is to the unit of at least whole beats.


<span id='loinc-coded-heart-rate-measurement'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> Scenario: LOINC Coded Heart Rate Measurement

The system should provide LOINC codes along with measurements.

GIVEN
: a <i>&lt;Measurement&gt;</i> of blood pressure

WHEN
: the <i>&lt;Measurement&gt;</i> is retrieved

THEN
: that <i>&lt;Measurement&gt;</i> is associated with a <i>&lt;LOINC Code&gt;</i> for Blood Pressure

   AND
   : that <i>&lt;LOINC Code&gt;</i> is 8480-6 Systolic blood pressure or 8462-4 Diastolic blood pressure


<span id='ucum-coded-heart-rate-units'/>
#### <span class='glyphicon text-info glyphicon-phone'/> <span class='glyphicon text-info glyphicon-cloud'/> Scenario: UCUM Coded Heart Rate Units

The measurement should use units coded in UCUM.

GIVEN
: a <i>&lt;Measurement&gt;</i> of Heart Rate

WHEN
: the <i>&lt;Measurement&gt;</i> is retrieved

THEN
: that <i>&lt;Measurement&gt;</i> is associated with a <i>&lt;UCUM Unit Code&gt;</i>,

   AND
   : that <i>&lt;UCUM Unit Code&gt;</i> is '/min' (per minute)

   AND
   : that <i>&lt;UCUM Unit Code&gt;</i> may include a UCUM comment (e.g. '{beat}/min' or '{beats}/min')
