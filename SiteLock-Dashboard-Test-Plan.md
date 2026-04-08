## SiteLock Dashboard — Sub-Test Plan

**Living Document** — Last Updated: April 8, 2026  
Parent: Sitelock-Master-Test-Plan.md

---

### Overview

The SiteLock Dashboard test plan covers validation of core dashboard functionality, navigation, site visibility, security status reporting, and user interactions after successful authentication.

Testing is performed using a combination of E2E, integration, and manual testing to ensure confidence in user-facing behavior and overall dashboard stability.

Test cases must be kept current. Any ticket, bug fix, or feature that affects dashboard behavior must include an associated test case update before the work is considered complete.

**TestRail** is the source of truth for all test execution and reporting. Test cases defined in this document must be represented in TestRail, and all executions must be logged there.

---

### Scope

<table>
<tr>
<th>Workflow</th>
<th>Testing Layer(s)</th>
</tr>
<tr>
<td>Dashboard overview load after login</td>
<td>E2E, Manual</td>
</tr>
<tr>
<td>Multiple sites overview and site health status</td>
<td>E2E, Manual</td>
</tr>
<tr>
<td>Single site comprehensive dashboard view</td>
<td>E2E</td>
</tr>
<tr>
<td>Navigation between dashboard sections</td>
<td>E2E, Manual</td>
</tr>
<tr>
<td>Security report visibility and access</td>
<td>E2E, Manual</td>
</tr>
<tr>
<td>Alerts and notifications display</td>
<td>E2E</td>
</tr>
</table>

---

### Test Cases

#### TC-DASH-001 — Dashboard Overview Loads Successfully

<table>
<tr>
<th>Field</th>
<th>Detail</th>
</tr>
<tr>
<td><strong>Workflow</strong></td>
<td>Dashboard overview load after login</td>
</tr>
<tr>
<td><strong>Type</strong></td>
<td>E2E / Manual</td>
</tr>
<tr>
<td><strong>Priority</strong></td>
<td>Critical</td>
</tr>
<tr>
<td><strong>Preconditions</strong></td>
<td>User is authenticated and has at least one site associated with the account</td>
</tr>
</table>

**Steps:**
- Log in to the SiteLock dashboard
- Observe the landing page

**Expected Result:**  
Dashboard overview loads successfully and displays site summary, health status, and actionable items.

---

#### TC-DASH-002 — Multiple Sites Overview Displays Correct Health Status

<table>
<tr>
<th>Field</th>
<th>Detail</th>
</tr>
<tr>
<td><strong>Workflow</strong></td>
<td>Multiple sites overview and site health status</td>
</tr>
<tr>
<td><strong>Type</strong></td>
<td>E2E / Manual</td>
</tr>
<tr>
<td><strong>Priority</strong></td>
<td>High</td>
</tr>
<tr>
<td><strong>Preconditions</strong></td>
<td>Account contains multiple configured sites with varying health states</td>
</tr>
</table>

**Steps:**
- Log in to the dashboard
- Navigate to the multiple sites overview
- Review site health indicators

**Expected Result:**  
Each site displays the correct health state and links to the appropriate site view.

---

#### TC-DASH-003 — Comprehensive Site View Loads for Single Site

<table>
<tr>
<th>Field</th>
<th>Detail</th>
</tr>
<tr>
<td><strong>Workflow</strong></td>
<td>Single site comprehensive dashboard view</td>
</tr>
<tr>
<td><strong>Type</strong></td>
<td>E2E</td>
</tr>
<tr>
<td><strong>Priority</strong></td>
<td>High</td>
</tr>
<tr>
<td><strong>Preconditions</strong></td>
<td>Account contains a single configured site</td>
</tr>
</table>

**Steps:**
- Log in to the dashboard
- Observe the default site view

**Expected Result:**  
The comprehensive site view loads and displays site security information.

---

#### TC-DASH-004 — Dashboard Navigation Between Sections

<table>
<tr>
<th>Field</th>
<th>Detail</th>
</tr>
<tr>
<td><strong>Workflow</strong></td>
<td>Navigation between dashboard sections</td>
</tr>
<tr>
<td><strong>Type</strong></td>
<td>E2E / Manual</td>
</tr>
<tr>
<td><strong>Priority</strong></td>
<td>Medium</td>
</tr>
<tr>
<td><strong>Preconditions</strong></td>
<td>User is logged in and has access to multiple dashboard sections</td>
</tr>
</table>

**Steps:**
- Navigate between Overview, Sites, Messages, and Help sections

**Expected Result:**  
Correct pages load with expected data and no errors.

---

### Regression Notes

- This plan defines the regression baseline for SiteLock Dashboard functionality.
- Any dashboard UI, navigation, or security reporting changes require re-execution of this suite.
- All results must be recorded in **TestRail**, which is the source of truth for release validation.
