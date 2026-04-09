# Sub-Test Plan:Dashboard — Scan Results & Reporting

## 1. Overview
This Sub-Test Plan validates the View scan and protection results details workflows across key SiteLock security features, including Vulnerability Scan, Webpage Scan, SMART Database Scan, Firewall & CDN, and SMART Patch. These workflows enable users to view detailed scan results, review detected threats or vulnerabilities at various levels (URL, platform, database, traffic, and file), inspect metadata, statuses, and metrics, and navigate historical results. The plan ensures that all security‑related data and statistics are accurate, consistent, accessible, and clearly presented, supporting reliable user insight into website protection and scan outcomes

---

## 2. Scope
**In Scope**
- View scan summary in dashboard
- View SMART results details
- View Webpage Scan results details
- View Vulnerability Scan results details
- View SMART DB Scan results details
- View Firewall & CDN stats
- View Smart Patch result details

---

## 3. Test Cases

### TC‑WPS‑01: Access Webpage Scan Details Page

**Type:** E2E  
**Priority:** High  
**Preconditions:** User is authenticated and has a website with Webpage Scan enabled  
**Workflow:** View Webpage Scan results details  

**Steps:**
1. Navigate to SiteLock Dashboard
2. Open website site view
3. Click **Security Report** → **Security Scans**
4. Click **Details** under Webpage Scan

**Expected Result:** Webpage Scan page is displayed with scan summary and results table

--- 
### TC‑WPS‑02: Verify Scan Summary Information

**Type:** Integration  
**Priority:** High  
**Preconditions:** At least one completed Webpage Scan exists  
**Workflow:** View Webpage Scan results details  

**Steps:**
1. Open Webpage Scan page
2. Review summary section at top

**Expected Result:** 
Scan Time, Status, Pages Scanned, Malware Found, and Links Checked are displayed and populated correctly

---

### TC‑VS‑01: Access Vulnerability Scan Results Details Page

**Type:** E2E  
**Priority:** High  
**Preconditions:** User is authenticated and has a website with Vulnerability Scan enabled  
**Workflow:** View Vulnerability Scan results details  

**Steps:**
1. Navigate to SiteLock Dashboard
2. Open website site view
3. Click **Security Report** → **Security Scans**
4. Click **Details** under Vulnerability Scan

**Expected Result:** 
Vulnerability Scan page is displayed with scan summary and Platform Scan Results sections

---

### TC‑VS‑02: View and Expand Platform Vulnerability Details

**Type:** Integration  
**Priority:** High  
**Preconditions:** Completed vulnerability scan with at least one detected vulnerability  
**Workflow:** View Vulnerability Scan results details  

**Steps:**
1. Navigate to the **Platform Scan Results** table
2. Locate a vulnerability record
3. Click **Details** for the selected row

**Expected Result:** 
Expanded view displays Category, Summary, and detailed Description of the vulnerability, including severity level

---

### TC‑VS‑03: View Previous Vulnerability Scan Results

**Type:** E2E  
**Priority:** Medium  
**Preconditions:** Multiple vulnerability scans exist in Platform Scan History  
**Workflow:** View Vulnerability Scan results details  

**Steps:**
1. Navigate to the **Platform** tab on the Vulnerability Scan page
2. Open **Platform Scan History**
3. Click **View** next to a historical scan date

**Expected Result:** 
Vulnerability Scan page reloads with summary and detailed results from the selected historical scan

---

### TC-SMDB-01: Access SMART Database Scan Results Details Page

**Type:** E2E  
**Priority:** High  
**Preconditions:** User is authenticated and SMART Database Scan is enabled for the website  
**Workflow:** View SMART DB Scan results details  

**Steps:**
1. Navigate to the SiteLock Dashboard
2. Open the website’s comprehensive site view
3. Click **Security Report** → **Security Scans**
4. Under **SMART Database Scan**, click **View Details**

**Expected Result:** 
SMART Database Scan page loads successfully displaying scan summary and Platform Scan Results

---

### TC-SMDB-02: View Platform Scan Result Table Details

**Type:** Integration  
**Priority:** High  
**Preconditions:** A SMART Database Scan has completed and platform scan results are available  
**Workflow:** View SMART DB Scan results details  

**Steps:**
1. Navigate to the **Platform Scan Results** section
2. Locate a database table with status **Issues Found**
3. Click **Details** for the selected table

**Expected Result:** 
Detailed view opens showing database table name, issue status, and malware/spam counts (fixed vs remaining)

---

### TC-FC-01: Access Firewall & CDN Stats Details Page

**Type:** E2E  
**Priority:** High  
**Preconditions:** User is authenticated and Firewall & CDN feature is enabled for the website  
**Workflow:** View Firewall & CDN stats  

**Steps:**
1. Log in to the SiteLock Dashboard
2. Navigate to the target website’s site view
3. Open the **Firewall & CDN** page

**Expected Result:** 
Firewall & CDN page loads successfully showing the Summary tab with traffic statistics and component status

---

### TC-FC-02: Verify Traffic and CDN Statistics in Summary Tab

**Type:** Integration  
**Priority:** High  
**Preconditions:** Website has recorded traffic and CDN activity within the selected time range  
**Workflow:** View Firewall & CDN stats  

**Steps:**
1. Open the **Summary** tab on the Firewall & CDN page
2. Review Visitor Statistics (Human Visitors, Bot Visitors, Total Sessions)
3. Review Cached Data and Cached Requests metrics
4. Review Browser and Country distribution sections

**Expected Result:** 
All statistics are displayed with non‑empty values and update correctly when the time range or metric selection changes

---

### TC-FC-03: View Detected Threats Details

**Type:** Manual  
**Priority:** Medium  
**Preconditions:** Firewall has detected and mitigated at least one threat  
**Workflow:** View Firewall & CDN stats  

**Steps:**
1. Navigate to the **Found Threats** tab
2. Apply filters using Category, IP Address, or Country
3. Inspect a threat record in the results table

**Expected Result:** 
Threat details are displayed correctly, including Date Found, Category, Type, IP Address, Country, Hits/Views, Entry Page, and User Agent

---

### TC-SP-01: Access SMART Patch Results Details Page

**Type:** E2E  
**Priority:** High  
**Preconditions:** User is authenticated and SMART Patch is enabled for a supported platform (WordPress or Joomla)  
**Workflow:** View Smart Patch result details  

**Steps:**
1. Log in to the SiteLock Dashboard
2. Navigate to the website’s comprehensive site view
3. Click **Security Report** → **SMART Patch**
4. Click **Details** under SMART Patch

**Expected Result:** 
SMART Patch page loads successfully displaying the scan summary and Scan Results sections

---

### TC-SP-02: View SMART Patch Scan Result Details

**Type:** Integration 
**Priority:** High  
**Preconditions:** A SMART Patch scan has completed with detected vulnerabilities  
**Workflow:** View Smart Patch result details  

**Steps:**
1. Navigate to the **Scan Results** section on the SMART Patch page
2. Review listed files with detected vulnerabilities
3. Inspect the **Type** and **Patch Status** columns

**Expected Result:** 
Each record displays the filename, vulnerability type, and correct patch status (Warning Only, Success, or Failed)

---

### TC-SP-03: View Previous SMART Patch Scan Results

**Type:** Manual  
**Priority:** Medium  
**Preconditions:** Multiple SMART Patch scans exist in Full Scan History  
**Workflow:** View Smart Patch result details

**Steps:**
1. Scroll to the **Full Scan History** section
2. Use the date filter or scroll to locate a previous scan
3. Click **View** for the selected scan

**Expected Result:** 
SMART Patch page reloads showing summary and Scan Results corresponding to the selected historical scan

---

## Regression Notes
- Re‑execute all High priority test cases after any UI, layout, or navigation changes across Security Report, Security Scans, Firewall & CDN, SMART Patch, or related detail pages.
- Revalidate details/row expansion behavior (tables, accordions, modals, and pop‑ups) after any frontend component refactoring or UI framework updates.
- Verify scan history and historical result loading after backend pagination, filtering, date‑range, or API changes.
- Confirm summary data accuracy and consistency by comparing summary counters vs detailed view values, severity counts vs itemized results, scan metrics before and after scan scheduling or execution logic updates
- Revalidate data rendering and aggregation after backend schema, query, or data‑processing updates (including dashboard aggregation services).
- Verify filtering, searching, and sorting behavior remains functional after backend query or schema changes.
- Confirm status indicators and flags (scan status, patch status, firewall/CDN state, threat status) remain accurate after service‑level or configuration updates.
- Ensure historical views, pop‑ups, and detail drawers continue to function correctly after modal, dialog, or routing changes.
