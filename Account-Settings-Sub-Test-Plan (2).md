
# Account Settings — Sub-Test Plan

**Living Document** — Last Updated: April 8, 2026  
Parent: SiteLock Master Test Plan

---

## Overview

This sub-test plan validates the **Account Settings** component of the SiteLock application, including related **Account Preferences** functionality. Testing ensures that authorized users can view and manage account-level data accurately, securely, and consistently, while access is correctly restricted for unauthorized users.

This test plan is informed by the official SiteLock documentation for Account Settings and Account Preferences and is intended to be executed via a combination of manual, end-to-end (E2E), and integration testing. TestRail is the system of record for execution and results.

---

## In Scope

| Area | Description |
|-----|------------|
| Account Settings | Contact info, billing info, subscriptions, invoices, activity history |
| Account Preferences | Site notifications, account language |
| Permissions | Access control for owners and authorized support agents |

---

## Out of Scope

- Authentication flows (covered by Authentication & Access Test Plan)
- Subscription lifecycle management (covered by Subscription Management Test Plan)

---

## Roles & Permissions

- **Account Owner**: Full access to Account Settings and Preferences
- **Authorized Support Agent**: Access based on assigned permissions
- **Restricted User**: No access to Account Settings or Preferences

---

## Test Cases

### TC-AS-001 — Access Account Settings Page

**Type:** E2E / Manual  
**Priority:** Critical  
**Preconditions:** User is logged in as account owner or authorized support agent

**Steps:**
1. Log in to the SiteLock dashboard
2. Open the profile menu
3. Select **Account Settings**

**Expected Result:**
Account Settings page loads successfully, displaying all available sections.

---

### TC-AS-002 — Update Contact Information

**Type:** E2E / Manual  
**Priority:** High  
**Preconditions:** User has permission to update account settings

**Steps:**
1. Navigate to **Account Settings** → **Contact Information**
2. Update one or more fields (e.g., company name, contact email, phone)
3. Click **Save Changes**

**Expected Result:**
Contact information is saved and persists after refresh.

---

### TC-AS-003 — Update Billing Information

**Type:** Manual  
**Priority:** High  
**Preconditions:** Account has existing billing information

**Steps:**
1. Navigate to **Account Settings** → **Billing Information**
2. Add, update, or remove payment details
3. Click **Save Changes**

**Expected Result:**
Billing updates are saved and applied to future invoices and renewals.

---

### TC-AS-004 — View and Download Invoices

**Type:** Manual  
**Priority:** Medium  
**Preconditions:** Account has generated invoices

**Steps:**
1. Navigate to **Account Settings** → **Invoices**
2. Select an invoice
3. Click **Download**

**Expected Result:**
Invoice PDF downloads successfully and matches selected record.

---

### TC-AS-005 — View Account Activity History

**Type:** Manual  
**Priority:** Medium  
**Preconditions:** Account has recorded activity

**Steps:**
1. Navigate to **Account Settings** → **History**
2. Review activity log or use search

**Expected Result:**
Activity history displays accurate timestamps and action details.

---

### TC-AS-006 — Manage Site Notifications

**Type:** E2E / Manual  
**Priority:** High  
**Preconditions:** User has access to Preferences

**Steps:**
1. Open profile menu → **Preferences**
2. Select **Site Notifications**
3. Enable/disable notifications per site or for all sites
4. Click **Save Changes**

**Expected Result:**
Notification preferences are saved and applied across the account.

---

### TC-AS-007 — Update Account Language

**Type:** E2E / Manual  
**Priority:** Medium  
**Preconditions:** Multiple languages are available

**Steps:**
1. Navigate to **Preferences** → **Account Language**
2. Select a different language
3. Click **Save Changes**

**Expected Result:**
Selected language is saved and reflected across the dashboard.

---

### TC-AS-008 — Unauthorized Access to Account Settings

**Type:** Integration / Manual  
**Priority:** Critical  
**Preconditions:** User is logged in without required permissions

**Steps:**
1. Attempt to access **Account Settings** or **Preferences**

**Expected Result:**
Access is denied or restricted; no data can be modified.

---

## Regression Notes

- This test plan serves as the regression baseline for Account Settings and Preferences.
- Any change affecting account data models, billing, notifications, or permissions requires re-execution of this suite.
- All execution results must be tracked in TestRail prior to release.
