# Ubuntu Desktop Installer - Age Verification Testing Guide

## Prerequisites
- Ubuntu Desktop 24.04 system (physical or VM)
- Access to the ubuntu-desktop-provision repository

## Setup Instructions

### 1. Clone and Build
```bash
git clone https://github.com/dylanmtaylor/ubuntu-desktop-provision.git
cd ubuntu-desktop-provision
git checkout feature/age-verification-compliance

# Build provd backend
cd provd
go generate
go build -o provd ./cmd/provd

# Install D-Bus policy
sudo cp ../provd/dbus/com.ubuntu.AgeVerification.xml /etc/dbus-1/system.d/age-verification.conf
sudo systemctl reload dbus

# Start provd service
sudo ./provd &
```

### 2. Test Flutter UI
```bash
cd ../packages/ubuntu_provision
flutter pub get
flutter test

# Or run the app directly
cd ../../apps/ubuntu_init
flutter run
```

## Test Cases

### Test 1: US User - Age Verification Should Appear
**Steps:**
1. Set system locale to US (en_US)
2. Launch installer/init flow
3. Navigate through setup pages

**Expected:**
- Age verification page appears
- Dropdown shows birth years (current year - 100 to current year)
- "Continue" button disabled until year selected
- Privacy notice displayed

**Verify:**
- Select birth year 2010 (age 16)
- Click Continue
- Check file created: `/var/lib/AccountsService/users/<username>.age`
- File contains: `{"birth_year":2010}`

### Test 2: Non-US User - Age Verification Should NOT Appear
**Steps:**
1. Set system locale to non-US (e.g., en_GB, de_DE)
2. Launch installer/init flow
3. Navigate through setup pages

**Expected:**
- Age verification page does NOT appear
- Flow continues normally without age collection

### Test 3: D-Bus Service Integration
**Steps:**
1. After completing Test 1, verify D-Bus service
2. Run: `busctl --system call com.ubuntu.AgeVerification /com/ubuntu/AgeVerification com.ubuntu.AgeVerification GetAgeBracket s "<username>"`

**Expected:**
- Returns: `u 3` (bracket 3 for age 16)

### Test 4: Multiple Users
**Steps:**
1. Create multiple user accounts with different ages
2. For each user, complete setup with different birth years:
   - User A: 2015 (age 11)
   - User B: 2010 (age 16)
   - User C: 2000 (age 26)

**Expected:**
- Each user has separate `.age` file
- D-Bus returns correct bracket for each:
  - User A: bracket 1 (UNDER_13)
  - User B: bracket 3 (AGE_16_TO_17)
  - User C: bracket 4 (AGE_18_PLUS)

### Test 5: Age Progression
**Steps:**
1. Create user with birth year 2013 (age 13 in 2026)
2. Query bracket: should be 2 (AGE_13_TO_15)
3. Simulate year change to 2029 (age 16)
4. Query bracket again

**Expected:**
- Bracket automatically updates to 3 (AGE_16_TO_17)
- No manual intervention needed

## Validation Checklist

- [ ] Age verification page renders correctly
- [ ] US-only enforcement works
- [ ] Birth year dropdown functional
- [ ] Data saved to correct location
- [ ] File permissions are 0600
- [ ] D-Bus service responds
- [ ] Correct brackets returned
- [ ] Multi-user isolation works
- [ ] Age progression automatic
- [ ] No third-party data sharing
- [ ] Privacy notice displayed

## Troubleshooting

### Issue: Age verification page doesn't appear
- Check locale: `echo $LANG`
- Verify shouldShow() logic in code
- Check Flutter logs

### Issue: D-Bus service not responding
- Check service running: `ps aux | grep provd`
- Check D-Bus policy: `ls /etc/dbus-1/system.d/age-verification.conf`
- Reload D-Bus: `sudo systemctl reload dbus`

### Issue: File not created
- Check directory exists: `ls -la /var/lib/AccountsService/users/`
- Check permissions
- Check provd logs

## Success Criteria

✓ All test cases pass
✓ No errors in logs
✓ Compliance requirements met:
  - Per-user storage
  - Age brackets (4 levels)
  - US-only enforcement
  - Minimal data collection
  - No third-party sharing
  - Automatic age progression

## Notes

- This implementation complies with CA AB-1043 and CO SB26-051
- Effective date: January 1, 2027
- Backend fully tested and validated
- Frontend code validated, ready for integration
