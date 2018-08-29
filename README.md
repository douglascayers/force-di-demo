Dependency Injection
====================

This is the sample code for the demos in my presentation to the
[Nashville Salesforce Developers Group](https://trailblazercommunitygroups.com/nashville-tn-developers-group/)
on August 23, 2018 and to the [Richmond Salesforce Developers Group](https://trailblazercommunitygroups.com/events/details/salesforce-richmond-va-developers-group-presents-dependency-injection-flows-and-force-di) about the open source dependency injection framework [force-di](https://github.com/afawcett/force-di).

Slides are available [here](https://www.slideshare.net/douglascayers/dependency-injection-with-the-force-di-framework-111838204).


Instructions
------------

1. Deploy the force-di framework to your org ([instructions](https://github.com/afawcett/force-di#install-latest-version-via-a-salesforce-dx-package))

2. Clone this repository and push the metadata into your scratch org

3. In Setup, create Binding custom metadata records to wire up your desired injections


Project Layout 
--------------

| Folder | Description |
|--------|-------------|
| force-app | Customizations in the org that make use of the force-di framework. The implementations that get injected exist in the other package folders. |
| force-app-demo1-base-pkg | Defines the IMessage interface for the ChatApp demo. |
| force-app-demo1-message-pkg | Defines the IMessage implementations for the ChatApp demo. |
| force-app-demo2-widget-pkg | Defines the Lightning components that get injected into Widget__c action override in force-app. |
| force-app-demo3-flow-pkg | Defines the Visualforce components that get injected into Widget__c custom button in force-app. |
