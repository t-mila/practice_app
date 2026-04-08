# Sub-Test Plan: Server Access Component (SiteLock)

## 1. Purpose
This sub-test plan defines detailed test coverage for the **Server Access** component of the SiteLock application. The objective is to verify correct configuration, validation, security, and usability of server access settings used by SiteLock services such as SMART scans and backups.

## 2. Scope

### In Scope
- Navigation to Server Access settings
- Configuration using **Same Credentials** option
- Configuration using **Separate Credentials** option
- Supported connection types (FTP, FTPS, SFTP)
- Field validation for all Server Access parameters
- Saving, updating, and persisting configuration
- Service-specific behavior (SMART File Scan, SMART DB Scan, File Backup, DB Backup)

## 3. References
- Managing Server Access — SiteLock Documentation

## 4. Test Environment
- SiteLock staging environment
- Website with SiteLock services enabled
- Test server supporting FTP, FTPS, SFTP, and MySQL
- User role: Account Admin

## 5. Preconditions
- User is logged in to SiteLock Dashboard
- Website is added to the account
- Relevant SiteLock services are active on the plan

## 6. Test Data
- Valid FTP/FTPS/SFTP credentials
- Valid and invalid hostnames and IP addresses
- Valid and invalid port numbers
- Valid and invalid SSH keys
- Sample website root paths (e.g., /public_html)

## 7. Detailed Test Cases

### TC-SA-01: Navigate to Server Access via Setup Wizard
**Steps:**
1. Open SiteLock Dashboard
2. Navigate to website comprehensive site view
3. Click **Setup Wizard** tab
4. Click **Server Access** tab

**Expected Result:**
- Server Access configuration page is displayed

---

### TC-SA-02: Navigate to Server Access via Site Settings
**Steps:**
1. Open website comprehensive site view
2. Click **Site Settings** tab
3. Select **Server Access** from the left menu

**Expected Result:**
- Server Access settings page is displayed

---

### TC-SA-03: Configure Server Access Using Same Credentials (Valid Data)
**Steps:**
1. Open Server Access settings
2. Select **Same Credentials**
3. Select **SFTP** as Connection Type
4. Enter valid Host
5. Enter Port **22**
6. Enter valid Username
7. Enter valid Password or SSH key
8. Set Transfer Speed to **Normal**
9. Set Maximum Download Time to **60 minutes per day**
10. Enter valid Website Root Directory
11. Click **Save Changes**

**Expected Result:**
- Configuration is saved successfully
- No validation errors are shown

---

### TC-SA-04: Validate Mandatory Fields (Same Credentials)
**Steps:**
1. Select **Same Credentials**
2. Leave Host, Username, or Password empty
3. Click **Save Changes**

**Expected Result:**
- System displays validation errors for missing required fields

---

### TC-SA-05: Reject Invalid Port Number
**Steps:**
1. Select **Same Credentials**
2. Enter invalid Port Number (e.g., text or out-of-range number)
3. Click **Save Changes**

**Expected Result:**
- Error message is shown indicating invalid port value

---

### TC-SA-06: Configure Server Access Using Separate Credentials
**Steps:**
1. Open Server Access settings
2. Select **Separate Credentials**
3. Open **SMART File Scan** tab
4. Enter valid SFTP credentials
5. Click **Save and Continue**
6. Open **SMART Database Scan** tab
7. Enter valid MySQL host, port **3306**, username, and password
8. Click **Save and Continue**

**Expected Result:**
- Credentials are saved independently per service
- Navigation between service tabs works correctly

---

### TC-SA-07: Verify Protocol Availability per Service
**Steps:**
1. Select **Separate Credentials**
2. Open SMART Database Scan tab
3. Review Connection Type options

**Expected Result:**
- Only supported connection types are available for the selected service

---

### TC-SA-08: Upload SSH Key for SFTP Authentication
**Steps:**
1. Select SFTP as Connection Type
2. Choose SSH key authentication
3. Save configuration

**Expected Result:**
- System accepts SSH key
- Instruction to upload public key is displayed if required

---

### TC-SA-09: Update Existing Server Access Configuration
**Steps:**
1. Open existing Server Access settings
2. Modify Transfer Speed
3. Click **Save Changes**

**Expected Result:**
- Updated configuration is saved and persists after page reload

---

### TC-SA-10: Verify Root Directory Field Not Applicable for SMART Database Scan
**Steps:**
1. Select **Separate Credentials**
2. Open SMART Database Scan tab

**Expected Result:**
- Website Root Directory field is not displayed or is disabled

## 8. Entry Criteria
- Server Access feature available in environment
- Test user credentials prepared

## 9. Exit Criteria
- All test cases executed
- No Critical or High severity issues open

## 10. Risks and Mitigation
- **Risk:** Incorrect credentials blocking SiteLock scans
  - **Mitigation:** Extensive negative testing and clear validation messaging

## 11. Assumptions
- User has administrative permissions
- Test servers are correctly configured for access
