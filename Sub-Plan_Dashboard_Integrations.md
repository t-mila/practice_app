# Sub-Test Plan: Integration - WordPress Plugin

## Overview
This Sub-Test Plan validates the **WordPress Plugin Settings** workflow within the SiteLock application. The objective is to ensure that users can correctly connect, configure, and view SiteLock protection settings via the WordPress plugin, and that changes made in the plugin are accurately reflected in the SiteLock Dashboard. The plan focuses on real user interactions with plugin settings that affect website security posture and scan behavior.

---

## In Scope
- WordPress Plugin Settings

## Test Cases

### TC-WP-01: Verify WordPress plugin is connected to SiteLock account

**Type:** E2E (UI + Integration)  
**Priority:** High  
**Workflow:** WordPress Plugin Settings  

**Preconditions:**
- WordPress site is accessible and SiteLock plugin is installed and activated
- SiteLock account and subscription exist for the site
- User has WordPress admin credentials and SiteLock account owner access

**Steps:**
1. Log in to the WordPress Admin Dashboard
2. Navigate to **SiteLock** plugin settings page
3. Observe connection status and site information

**Expected Result:**
- Plugin shows site as successfully connected to the correct SiteLock account
- SiteLock service and protection status are displayed without errors

---

### TC-WP-02: Verify plugin settings reflect current SiteLock configuration

**Type:** Functional  
**Priority:** Medium  
**Workflow:** WordPress Plugin Settings  

**Preconditions:**
- WordPress plugin is connected to SiteLock
- Site has active SiteLock subscription

**Steps:**
1. Open **SiteLock** plugin settings in WordPress
2. Review displayed scan status, protection indicators, and configuration values
3. Compare visible data with the SiteLock Dashboard settings for the same site

**Expected Result:**
- Plugin displays scan and protection settings that match SiteLock Dashboard values
- No stale, missing, or conflicting configuration data is shown

---

### TC-WP-03: Verify updating plugin settings is saved successfully

**Type:** Integration  
**Priority:** High  
**Workflow:** WordPress Plugin Settings  

**Preconditions:**
- WordPress admin user is logged in
- Plugin is connected and editable settings are available

**Steps:**
1. Navigate to **SiteLock** plugin settings page
2. Modify an available configurable option (e.g., scan trigger, notification toggle)
3. Save changes
4. Reload plugin settings page

**Expected Result:**
- Updated setting is saved and persists after page reload
- No errors are displayed
- Changes are reflected in the SiteLock Dashboard if applicable

---

## Regression Notes
- Execute regression testing after:
  - WordPress plugin version updates
  - API or authentication changes between plugin and SiteLock
  - Subscription or scan logic updates
- Verify backward compatibility with existing connected sites
- Ensure plugin continues to display correct status when:
  - Subscription expires or is canceled
  - SiteLock services are temporarily unavailable
- Revalidate synchronization between plugin UI and SiteLock Dashboard after backend changes
