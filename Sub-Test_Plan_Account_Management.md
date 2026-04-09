# Sub-Test Plan: Account Management

## Overview

This Sub-Test Plan covers validation of Account Management functionality within the SiteLock application. The goal of this plan is to ensure that authorized users can correctly view and manage account-related information, including subscriptions, billing details, profile security, and suscription cancellation requests.

---

##  In Scope
- View Subscriptions
- Update payment method
- Request subscription cancellation
- View My Profile → Security

---

##  Test Cases

### TC-WS-01: View site-specific subscriptions

**Type:** E2E (UI)  
**Priority:** High  
**Workflow:** View Subscriptions  
**Preconditions:**
- User is logged in as Account Owner or authorized Support Agent
- At least one site exists with an active subscription

**Steps:**
1. Navigate to SiteLock Dashboard
2. Open a website’s comprehensive view
3. Click **Site Settings**
4. Select **Subscriptions** from the left menu

**Expected Result:**
- Subscriptions page loads successfully
- Site-specific subscriptions table is displayed
- Each subscription shows correct Service, Status, Term, Renewal Date, and Amount

---

### TC-WS-02: View account-wide subscriptions

**Type:** Manual UI  
**Priority:** Medium  
**Workflow:** View Subscriptions  
**Preconditions:**
- User is logged in as Account Owner
- Account contains one or more subscriptions

**Steps:**
1. From the dashboard, click profile name (bottom-left)
2. Select **Account Settings**
3. Click **Subscriptions**

**Expected Result:**
- Account-wide Subscriptions page is displayed
- Both SiteLock-initiated and partner-initiated subscription sections are visible (if applicable)
- Data matches backend subscription records

---

### TC-WS-03: Verify role-based access control

**Type:** Integration / Security  
**Priority:** High  
**Workflow:** View Subscriptions  
**Preconditions:**
- User logged in with insufficient permissions (non-owner, limited role)

**Steps:**
1. Attempt to access Subscriptions page via Site Settings or Account Settings

**Expected Result:**
- Access to Subscriptions page is denied or restricted
- User is shown an authorization error or page is hidden

---

### TC-PM-01: Verify successful updating the billing profile

**Type:** Functional  
**Priority:** High  
**Workflow:** Update payment method  
**Preconditions:**
- SiteLock customer hybrid account has been created.
- Account Owner has valid login credentials and billing profile already added.
- Account Owner is logged in.

**Steps:**
1. Navigate to the Account Settings > "Billing Information" page.
2. Press Replace/Change button.
3. Enter new card number and CVV code, update information in several fields and press Save Changes button.
4. Reload the page.

**Expected Result:**
New billing information is saved correctly and billing profile card displays the updated information.

---

### TC-SC-01: Verify submitting a cancellation request for one subscription

**Type:** Functional  
**Priority:** High  
**Workflow:** Request subscription cancellation  
**Preconditions:**
- Sitelock Dashboard account is created with several sites and subscriptions initiated only directly through SiteLock.
- Account Owner has valid login credentials and dev_test@sitelock.com email set as the contact email.
- User is logged in.
- Access to the Sitelock Dev Test email is granted.

**Steps:**
1. Navigate to the Account Settings > Subscriptions.
2. Choose a subscription to cancel and check a check-box next to it.
3. Press Request Cancellation button.
4. Press Confirm button.
5. Check the dev_test@sitelock.com email inbox.

**Expected Result:**
- "Action Needed to Complete Your SiteLock Cancellation Request." email is received by the customer.
- "Subscription Cancellation Request" email is received by the cancellation team.

---

### TC-PS-01: Verify password change is successful if all values are correct on My Profile > "Security" page

**Type:** Security  
**Priority:** High  
**Workflow:** View My Profile → Security  
**Preconditions:**
- Customer account has been created.
- Account Owner/Viewer is logged in and is on "Security" page.

**Steps:**
1. Pay attention to the warning in the "Change Password" section.
2. Enter correct password in the "Current password" field.
3. Enter new password in the "New password" and "Confirm new password" fields in accordance with Password Requirements.
4. Press "Save Changes" button.
5. Check log in with new password

**Expected Result:**
- New credentials are saved correctly and login is successful.

---

## Regression Notes
Regression testing should be executed after any changes related to:
- Subscription lifecycle logic (creation, renewal, cancellation)
- Account permissions or role management
- Billing or payment provider integrations
- Profile security features (password policies, authentication)
- Dashboard navigation or Account Settings UI updates
