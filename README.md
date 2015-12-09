# EmailUtils

This is a utility class for salesforce which will generate an email thread ID for a given case ID on demand.  

## Methods 
* **getThreadId:**  This will return the actual thread id for a given case ID.
* **getThreadTag:** This will return the entire tag as it would appear in an email body with email-to-case enabled.

## Troubleshooting

If the unit tests are failing due `System.InvalidParameterValueException: Email Thread ID is not valid` thrown by `Cases.getCaseIdFromEmailThreadId`, the most
likely cause is because either Email-to-Case is not enabled or your organization settings do not allow emails to be sent. Both of these need to be active for
the `Cases.getCaseIdFromEmailThreadId` method to work properly.

### Enabling Email-to-Case

1. Go to `Settings -> Build -> Customize -> Cases -> Email-to-Case`.
2. Follow the steps there for activating Email-to-Case in your organization.

### Enabling Access to Send Email

1. Go to `Settings -> Administer -> Email Administration -> Deliverability`.
2. Under "Access to Send Email", select "All email" from the drop-down list.
3. Click Save.