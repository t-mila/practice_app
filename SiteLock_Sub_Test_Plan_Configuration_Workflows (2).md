# Sub-Test Plan: SiteLock Configuration Workflows

## 1. Overview
This Sub-Test Plan defines test coverage for configuration workflows within the SiteLock Dashboard related to security scanning and backup services. The goal is to ensure that administrators can correctly configure SMART File Scan, SMART Database Scan, File Backup, and Database Backup features, and that configured values are validated, saved, and reflected correctly in the UI.

## 2. Scope

### In Scope
- Configuration via Setup Wizard and Site Settings
- Field-level validation for configuration forms
- Saving and persistence of configuration data
- Configuration status indicators

### Out of Scope
- Malware or spam detection effectiveness
- Execution results of scans or backups
- Backup restore operations
- Performance, scalability, or load testing

## 3. Test Cases

---
### TC-SFS-01: Configure SMART File Scan with daily frequency and auto-removal
- **Type:** Functional
- **Priority:** High
- **Preconditions:**
  - User is logged into the SiteLock Dashboard
  - Website is added to the account
  - Valid server access credentials are available
- **Workflow:** Configure SMART File Scan
- **Steps:**
  1. Navigate to the website’s Comprehensive Site View
  2. Open the Setup Wizard
  3. Enter valid server access details
  4. Click Save and Continue
  5. Navigate to Site Settings → Scanning Preferences → SMART File Scan
  6. Set Scan Frequency to Daily
  7. Enable automatic malware removal
  8. Click Save Changes
- **Expected Result:** SMART File Scan settings are saved successfully without validation errors

---
### TC-SFS-02: Configure SMART File Scan exclusions
- **Type:** Functional
- **Priority:** Medium
- **Preconditions:** SMART File Scan is already configured
- **Workflow:** Configure SMART File Scan
- **Steps:**
  1. Navigate to SMART File Scan settings
  2. Add folders to exclude from scanning
  3. Add file extensions (.log, .tmp) to exclusions
  4. Set file size exclusion to exclude files larger than 25 MB
  5. Save changes
- **Expected Result:** Exclusion rules are saved and displayed correctly

---
### TC-SDB-01: Configure SMART Database Scan using WordPress platform
- **Type:** Functional
- **Priority:** High
- **Preconditions:**
  - WordPress website is connected
  - Database credentials are accessible
- **Workflow:** Configure SMART Database Scan
- **Steps:**
  1. Navigate to Setup Wizard
  2. Select SMART Database Scan under Database Settings
  3. Set Platform to WordPress
  4. Verify auto-detected database credentials
  5. Click Save and Continue
- **Expected Result:** SMART Database Scan configuration is saved and status indicator turns green

---
### TC-SDB-02: Enable automated scans and auto-clean options
- **Type:** Functional
- **Priority:** High
- **Preconditions:** SMART Database Scan is configured
- **Workflow:** Configure SMART Database Scan
- **Steps:**
  1. Navigate to Site Settings → Scanning Preferences → SMART Database Scan
  2. Enable Automated Daily Scans
  3. Enable automatic removal of spam code, spam links, and malware
  4. Click Save Changes
- **Expected Result:** Scanning preferences are saved successfully

---
### TC-BF-01: Configure File Backup with exclusions
- **Type:** Functional
- **Priority:** Medium
- **Preconditions:** Server access for File Backup is configured
- **Workflow:** Configure File Backup
- **Steps:**
  1. Navigate to Site Settings → Backup Settings
  2. Set File Backup Frequency to Weekly
  3. Exclude cache directories from backups
  4. Exclude .tmp files by extension
  5. Save changes
- **Expected Result:** File Backup settings are saved successfully

---
### TC-BDB-01: Configure Database Backup with daily frequency
- **Type:** Functional
- **Priority:** High
- **Preconditions:**
  - Database credentials (host, port, username, password, database name) are available
- **Workflow:** Configure Database Backup
- **Steps:**
  1. Navigate to Setup Wizard → Database Settings → Database Backup
  2. Set Database Backup Frequency to Daily
  3. Enter valid database connection details
  4. Click Save
- **Expected Result:** Database Backup configuration is saved and status indicator turns green

## 4. Regression Notes
- Verify configuration values persist after page refresh
- Verify settings persist after user logout and login
- Re-test configuration workflows after UI or navigation updates
- Ensure existing configurations are not impacted by product updates
