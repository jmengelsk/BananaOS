.class public final Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAttestationParametersOk:Z

.field public mAttestationVersionAtLeast3:Z

.field public mBindingOk:Z

.field public mBindingType:I

.field public mBootStateIsVerified:Z

.field public mCertChainOk:Z

.field public mCertPathValidatorAvailable:Z

.field public mCertificationFactoryAvailable:Z

.field public mEventNumber:I

.field public mEventTimeMs:J

.field public mKeyBootPatchLevelInRange:Z

.field public mKeyHwBacked:Z

.field public mKeyVendorPatchLevelInRange:Z

.field public mKeymasterHwBacked:Z

.field public mKeymasterVersionAtLeast4:Z

.field public mOsPatchLevelInRange:Z

.field public mOsVersionAtLeast10:Z

.field public mResult:I

.field public mSystemOwned:Z

.field public mSystemOwnershipChecked:Z

.field public mVerifiedBootStateLocked:Z


# direct methods
.method public static booleanToOkFail(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "OK"

    return-object p0

    :cond_0
    const-string p0, "FAILURE"

    return-object p0
.end method


# virtual methods
.method public final dumpTo(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertificationFactoryAvailable:Z

    if-nez v0, :cond_0

    const-string p0, "Certificate Factory Unavailable"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertPathValidatorAvailable:Z

    if-nez v0, :cond_1

    const-string p0, "Cert Path Validator Unavailable"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mAttestationParametersOk:Z

    if-nez v0, :cond_2

    const-string p0, "Attestation parameters set incorrectly."

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertChainOk:Z

    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Certificate Chain Valid (inc. Trust Anchor): "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertChainOk:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBindingOk:Z

    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Local Binding: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Binding Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBindingType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mSystemOwnershipChecked:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mSystemOwned:Z

    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "System Ownership: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    const-string v0, "KeyStore Attestation Parameters"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mOsVersionAtLeast10:Z

    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OS Version >= 10: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mOsPatchLevelInRange:Z

    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OS Patch Level in Range: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mAttestationVersionAtLeast3:Z

    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Attestation Version >= 3: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeymasterVersionAtLeast4:Z

    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keymaster Version >= 4: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeymasterHwBacked:Z

    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keymaster HW-Backed: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyHwBacked:Z

    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Key is HW Backed: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBootStateIsVerified:Z

    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Boot State is VERIFIED: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mVerifiedBootStateLocked:Z

    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Verified Boot is LOCKED: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyBootPatchLevelInRange:Z

    invoke-static {v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Key Boot Level in Range: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyVendorPatchLevelInRange:Z

    invoke-static {p0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->booleanToOkFail(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Key Vendor Patch Level in Range: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method
