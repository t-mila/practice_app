# Sub-Test Plan: Dashboard — Communication & Monitoring

##  Overview
This Sub-Test Plan validates key read-only security insights and notification workflows within the SiteLock dashboard, including View Messages, SSL Monitor Details, Risk Score, and Email Reputation Scan Details. The plan ensures users can access and review system notifications, SSL certificate health and status, aggregated security risk assessments, and email domain blacklist results (Spamhaus and SURBL), accurately interpreting security-related information across different dashboard sections and account configurations.

---

##  In Scope
- View Messages
- View Risk Score
- Email Reputation Scan details
- SSL Monitor details

---

##  Test Cases

### TC-VM-01 – View messages from global Messages page (multi-site account)

**Type:** E2E  
**Priority:** High  
**Workflow:** View Messages  
**Preconditions:**
 - User has an active SiteLock account with multiple websites
 - User is logged in to the SiteLock dashboard

**Steps:**
1. From the dashboard main navigation, click **Messages**.
2. Observe the Messages table.

**Expected Result:**
- The Messages page is displayed.
- Messages for all associated websites are listed in a table format with message preview and date.

---

### TC-VM-02 – View messages for a specific website from site Messages tab

**Type:** E2E  
**Priority:** High  
**Workflow:** View Messages  
**Preconditions:**
 - User has at least one website associated with the account
 - User is logged in

**Steps:**
1. Navigate to the comprehensive site view of a website.
2. Click the **Messages** tab.

**Expected Result:**
Only messages related to the selected website are displayed.

---

### TC-VM-03 – View full message content and mark message as read

**Type:** Integration  
**Priority:** Medium  
**Workflow:** View Messages  
**Preconditions:**
- At least one unread message exists
- User is on the Messages page or site Messages tab

**Steps:**
1. In the Messages table, click **View** for an unread message.
2. Review the message pop-up content.
3. Click **Back to List** to return to the Messages table.

**Expected Result:**
  - Message pop-up displays website name, date/time, and full message content.
  - Message is marked as read after being viewed.

---

### TC-SM-01 – Navigate to SSL Monitor Details page

**Type:** E2E  
**Priority:** High  
**Workflow:** SSL Monitor details  
**Preconditions:**
- User is logged in to the SiteLock dashboard
- User has a website with SSL Monitor enabled

**Steps:**
1. Navigate to the website’s comprehensive site view.
2. Click the **Security Report** tab.
3. Select **SSL Monitor**.
4. Click **Details**.

**Expected Result:**
- SSL Monitor Details page is displayed for the selected website.

---

### TC-SM-02 – Verify SSL certificate information in Details view

**Type:** Manual  
**Priority:** Medium  
**Workflow:** SSL Monitor details  
**Preconditions:**
- User is on the SSL Monitor Details page
- SSL certificate data exists for the site
  
**Steps:**
1. Review the **Details** and **Certificate** panels.

**Expected Result:**
- Common Name, issuing organization, validity dates, key type, and key strength are displayed correctly.

---

### TC-SM-03 – View SSL certificate status and last scanned information

**Type:** Integration  
**Priority:** Medium  
**Workflow:** SSL Monitor details  
**Preconditions:**
- User is on the SSL Monitor Details page

**Steps:**
1. Review the **Status** section.
2. Observe the certificate status and **Last Scanned** timestamp.

**Expected Result:**
- Certificate status (OK or Failed) and Last Scanned date/time are displayed and readable.

---

### TC-RS-01 – View Risk Score summary from Security Report

**Type:** E2E  
**Priority:** High  
**Workflow:** View Risk Score
**Preconditions:**
- User is logged in to the SiteLock dashboard
- Website has completed security scans

**Steps:**
1. Navigate to the website’s **Security Report** tab.
2. Locate the **Risk Score** section in the report list.

**Expected Result:**
- Risk Score tile is visible.
- Current score (for example, *Low Risk*) is displayed along with a short description.

---

### TC-ERS-02 – Verify Spamhaus blacklist status details

**Type:** Manual  
**Priority:** Medium  
**Workflow:** Email Reputation Scan details  
**Preconditions:**
- User is on the Email Reputation Scan Details page
**Steps:**
1. Review the **Spamhaus** panel.
**Expected Result:**
- Status displays either **OK** or **Listed**.
- **Last Scanned** date and time are shown.
- Reference links (for example, reputation checker or delisting procedure) are visible.

---

### TC-ERS-03 – Verify SURBL blacklist status details

**Type:** Manual  
**Priority:** Medium  
**Workflow:** Email Reputation Scan details  
**Preconditions:**
- User is on the Email Reputation Scan Details page
**Steps:**
1. Review the **SURBL** panel.
**Expected Result:**
- Status displays either **OK** or **Listed**.
- **Last Scanned** date and time are shown.
- SURBL lookup link is available.

---

## Regression Notes
- Re-run these tests after any changes to dashboard navigation, Security Report, or related UI components (Messages, SSL Monitor, Risk Score, Email Reputation Scan).
- Re-validate data accuracy and consistency following updates to backend services, scan sources, or third‑party integrations (SSL scanning, Risk Score inputs, Spamhaus, SURBL).
- Include these cases in smoke and regression testing whenever presentation logic, account-type behavior, or status definitions are modified.
