# Sub-Test Plan: Server Access Component (SiteLock)

## 1. Purpose
This sub-test plan defines the testing approach, scope, and test cases for the **Server Access** component of the SiteLock application. The goal is to validate secure, reliable, and role-appropriate access to servers via supported access methods.

## 2. Scope

### In Scope
- Server access configuration and management
- Authentication and authorization
- Supported access methods (e.g., SSH, SFTP, FTP)
- IP allowlisting / restrictions
- Credential management (create, update, revoke)
- Error handling and validation
- Audit logging related to server access

## 3. References
- *Managing Server Access — SiteLock Documentation*

## 4. Test Objectives
- Ensure only authorized users can configure and use server access
- Validate secure handling of credentials and keys
- Confirm correct behavior for valid and invalid access attempts
- Verify UI and API consistency

## 5. Test Approach
- **Manual Testing** for UI workflows and usability
- **API Testing** for backend validation (where applicable)
- **Security-focused Testing** for access control and data protection

## 6. Test Environment
- SiteLock staging environment
- Test servers with SSH/SFTP enabled
- Browsers: Chrome, Firefox
- Roles: Admin, Standard User (if applicable)

## 7. Features to Be Tested

### 7.1 Server Access Configuration
- Add new server access entry
- Edit existing server access settings
- Delete/revoke server access

### 7.2 Authentication Methods
- Username & password authentication
- SSH key–based authentication (if supported)

### 7.3 Permissions & Roles
- Admin-only access to server access management
- Restricted visibility for non-admin users

### 7.4 IP Restrictions
- Add allowed IP address
- Validate blocked access from non-allowed IPs

### 7.5 Validation & Error Handling
- Invalid credentials
- Missing required fields
- Duplicate server access entries

### 7.6 Audit & Logging
- Log creation, update, and deletion events
- Log failed access attempts

## 8. Test Cases (High-Level)

### TC-SA-01: Add Server Access (Valid Data)
- **Precondition:** User logged in as Admin
- **Steps:** Navigate to Server Access → Add → Enter valid credentials → Save
- **Expected Result:** Server access is created successfully

### TC-SA-02: Add Server Access (Invalid Credentials)
- **Expected Result:** Error message displayed, access not saved

### TC-SA-03: Edit Server Access
- **Expected Result:** Changes are saved and reflected correctly

### TC-SA-04: Delete Server Access
- **Expected Result:** Access is revoked and no longer usable

### TC-SA-05: Unauthorized User Access
- **Expected Result:** User is denied access to management UI

### TC-SA-06: IP Allowlist Enforcement
- **Expected Result:** Access allowed only from configured IPs

## 9. Entry Criteria
- Server Access feature deployed to test environment
- Test accounts available

## 10. Exit Criteria
- All planned test cases executed
- No Critical or High severity defects open

## 11. Risks & Mitigations
- **Risk:** Incorrect permission enforcement
  - *Mitigation:* Role-based testing and negative scenarios

## 12. Assumptions
- Server access protocols are preconfigured on target servers
- Test credentials are safe to use in non-production environments
