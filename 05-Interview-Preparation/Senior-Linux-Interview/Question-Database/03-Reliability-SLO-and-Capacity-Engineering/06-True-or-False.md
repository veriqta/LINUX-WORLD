# Reliability SLO and Capacity Engineering: True or False

## 1. If a command related to SLI exits successfully, the complete requirement is proven.

**Answer:** False. Exit status proves only the command's defined result. Verify effective state, the user outcome, security and persistence.

**Correction exercise:** State the evidence required to demonstrate the corrected claim.

## 2. A configuration file for SLO can be correct while runtime behavior remains wrong.

**Answer:** True. The process may use another source, cached or generated state, different precedence or a failed reload.

**Correction exercise:** State the evidence required to demonstrate the corrected claim.

## 3. Testing error budget only as root is sufficient.

**Answer:** False. Root can bypass controls and hide identity-specific failures. Test with the intended account or client.

**Correction exercise:** State the evidence required to demonstrate the corrected claim.

## 4. A safe burn rate change needs a defined rollback trigger before implementation.

**Answer:** True. The trigger, previous state, compatibility limits and validation should be known before impact.

**Correction exercise:** State the evidence required to demonstrate the corrected claim.

## 5. One snapshot is enough to diagnose every queueing performance issue.

**Answer:** False. Rates, trends, workload, saturation and time correlation are normally required.

**Correction exercise:** State the evidence required to demonstrate the corrected claim.

## 6. A negative test is useful when validating utilization.

**Answer:** True. It proves prohibited behavior remains denied and can expose overly broad access.

**Correction exercise:** State the evidence required to demonstrate the corrected claim.

## 7. If a command related to saturation exits successfully, the complete requirement is proven.

**Answer:** False. Exit status proves only the command's defined result. Verify effective state, the user outcome, security and persistence.

**Correction exercise:** State the evidence required to demonstrate the corrected claim.

## 8. A configuration file for headroom can be correct while runtime behavior remains wrong.

**Answer:** True. The process may use another source, cached or generated state, different precedence or a failed reload.

**Correction exercise:** State the evidence required to demonstrate the corrected claim.

## 9. Testing failure domains and load shedding only as root is sufficient.

**Answer:** False. Root can bypass controls and hide identity-specific failures. Test with the intended account or client.

**Correction exercise:** State the evidence required to demonstrate the corrected claim.
