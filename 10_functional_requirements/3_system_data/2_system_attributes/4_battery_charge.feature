@Device-Should @App-Should
Feature: Battery Charge
    The level of battery charge for a device should be reported.

    Reporting the battery charge level for a device enables an App to alert
    a user that the device needs recharging.

    NOTE: Some devices which may be assessed using this guide may have to
    meet more stringent requirements to ensure patient safety. That is outside
    of the scope of this guide.

Scenario: Battery Charge can be Accessed
	Battery charge status can be acceessed on devices which have a battery.

    Given A <Device Record>
    And a <Charge Level>
    When The <Device> is connected to the <App> and <App Runner>
    Then <Charge Level> for <Device> is reported by <App>