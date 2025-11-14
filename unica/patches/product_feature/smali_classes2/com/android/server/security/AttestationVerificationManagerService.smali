.class public Lcom/android/server/security/AttestationVerificationManagerService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

.field public final mPeerDeviceVerifier:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

.field public final mService:Lcom/android/server/security/AttestationVerificationManagerService$1;


# direct methods
.method public static -$$Nest$mverifyAttestationForAllVerifiers(Lcom/android/server/security/AttestationVerificationManagerService;Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    .registers 14

    new-instance v0, Landroid/security/attestationverification/IVerificationResult;

    invoke-direct {v0}, Landroid/security/attestationverification/IVerificationResult;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/security/attestationverification/IVerificationResult;->token:Landroid/security/attestationverification/VerificationToken;

    invoke-virtual {p1}, Landroid/security/attestationverification/AttestationProfile;->getAttestationProfileId()I

    move-result p1

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_f1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_22

    const-string p0, "AVF"

    const-string/jumbo p2, "Profile ["

    const-string/jumbo p3, "] is not supported."

    invoke-static {p1, p2, p3, p0}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v2, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I

    goto/16 :goto_11d

    :cond_22
    const-string p1, "AVF"

    const-string/jumbo v2, "Verifying Peer Device profile."

    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mPeerDeviceVerifier:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mEventNumber:I

    const-wide/16 v3, -0x1

    iput-wide v3, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mEventTimeMs:J

    iput v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mResult:I

    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertificationFactoryAvailable:Z

    iput-boolean v3, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertPathValidatorAvailable:Z

    iput-boolean v3, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mAttestationParametersOk:Z

    iput-boolean v3, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertChainOk:Z

    iput-boolean v3, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBindingOk:Z

    iput v2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBindingType:I

    iput-boolean v3, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mSystemOwnershipChecked:Z

    iput-boolean v3, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mSystemOwned:Z

    iput-boolean v3, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mOsVersionAtLeast10:Z

    iput-boolean v3, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyHwBacked:Z

    iput-boolean v3, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mAttestationVersionAtLeast3:Z

    iput-boolean v3, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeymasterVersionAtLeast4:Z

    iput-boolean v3, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeymasterHwBacked:Z

    iput-boolean v3, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBootStateIsVerified:Z

    iput-boolean v3, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mVerifiedBootStateLocked:Z

    iput-boolean v3, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mOsPatchLevelInRange:Z

    iput-boolean v3, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyBootPatchLevelInRange:Z

    iput-boolean v3, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyVendorPatchLevelInRange:Z

    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    const-string v4, "AVF"

    const/4 v5, 0x1

    if-nez v2, :cond_70

    const-string/jumbo p2, "Unable to access CertificateFactory"

    invoke-static {v4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    :cond_70
    iput-boolean v5, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertificationFactoryAvailable:Z

    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    if-nez v2, :cond_7d

    const-string/jumbo p2, "Unable to access CertPathValidator"

    invoke-static {v4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    :cond_7d
    iput-boolean v5, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertPathValidatorAvailable:Z

    :try_start_7f
    invoke-virtual {p0, p4}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->getCertificates([B)Ljava/util/List;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->validateCertificateChain(Ljava/util/List;)V

    iput-boolean v5, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mCertChainOk:Z

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/security/cert/X509Certificate;

    invoke-static {p4}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->fromCertificate(Ljava/security/cert/X509Certificate;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;

    move-result-object v2

    invoke-static {p2, p3}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->validateAttestationParameters(ILandroid/os/Bundle;)Z

    move-result v6

    const/16 v7, 0x8

    if-nez v6, :cond_9e

    move v1, v7

    goto :goto_c0

    :cond_9e
    iput-boolean v5, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mAttestationParametersOk:Z

    invoke-static {p4, v2, p2, p3, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkLocalBindingRequirements(Ljava/security/cert/X509Certificate;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;ILandroid/os/Bundle;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)Z

    move-result p2

    if-nez p2, :cond_a7

    move v3, v7

    :cond_a7
    invoke-virtual {p0, p3, v2, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->checkAttestationForPeerDeviceProfile(Landroid/os/Bundle;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)I

    move-result p2
    :try_end_ab
    .catch Ljava/security/cert/CertificateException; {:try_start_7f .. :try_end_ab} :catch_b0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_7f .. :try_end_ab} :catch_b0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7f .. :try_end_ab} :catch_b0
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_ab} :catch_b0
    .catch Ljava/lang/RuntimeException; {:try_start_7f .. :try_end_ab} :catch_ae

    or-int v1, v3, p2

    goto :goto_c0

    :catch_ae
    move-exception p2

    goto :goto_b2

    :catch_b0
    move-exception p2

    goto :goto_ba

    :goto_b2
    const-string/jumbo p3, "Unexpected error"

    invoke-static {v4, p3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v5

    goto :goto_c0

    :goto_ba
    const-string/jumbo p3, "Unable to parse/validate Android Attestation certificate(s)"

    invoke-static {v4, p3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c0
    iput v1, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mResult:I

    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mData:Ljava/util/ArrayDeque;

    monitor-enter v2

    :try_start_c7
    iget-object p2, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mData:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->size()I

    move-result p2

    const/16 p3, 0xa

    if-ne p2, p3, :cond_d9

    iget-object p2, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mData:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_d9

    :catchall_d7
    move-exception p0

    goto :goto_ef

    :cond_d9
    :goto_d9
    iget p2, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mEventsLogged:I

    add-int/2addr p2, v5

    iput p2, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mEventsLogged:I

    iput p2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mEventNumber:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mEventTimeMs:J

    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;->mData:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_ec
    .catchall {:try_start_c7 .. :try_end_ec} :catchall_d7

    iput v1, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I

    goto :goto_11d

    :goto_ef
    :try_start_ef
    monitor-exit v2
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_d7

    throw p0

    :cond_f1
    const-string p0, "AVF"

    const-string/jumbo p1, "Verifying Self Trusted profile."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_f9
    sget-object p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    if-nez p0, :cond_112

    const-class p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    monitor-enter p0
    :try_end_100
    .catchall {:try_start_f9 .. :try_end_100} :catchall_11b

    :try_start_100
    sget-object p1, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    if-nez p1, :cond_10e

    new-instance p1, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    invoke-direct {p1}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;-><init>()V

    sput-object p1, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    goto :goto_10e

    :catchall_10c
    move-exception p1

    goto :goto_110

    :cond_10e
    :goto_10e
    monitor-exit p0

    goto :goto_112

    :goto_110
    monitor-exit p0
    :try_end_111
    .catchall {:try_start_100 .. :try_end_111} :catchall_10c

    :try_start_111
    throw p1

    :cond_112
    :goto_112
    sget-object p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    invoke-virtual {p0, p2, p4, p3}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->verifyAttestation(I[BLandroid/os/Bundle;)I

    move-result p0

    iput p0, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I
    :try_end_11a
    .catchall {:try_start_111 .. :try_end_11a} :catchall_11b

    goto :goto_11d

    :catchall_11b
    iput v1, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I

    :goto_11d
    invoke-virtual {p5, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    invoke-direct {v0}, Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    new-instance v1, Lcom/android/server/security/AttestationVerificationManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/security/AttestationVerificationManagerService$1;-><init>(Lcom/android/server/security/AttestationVerificationManagerService;)V

    iput-object v1, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mService:Lcom/android/server/security/AttestationVerificationManagerService$1;

    new-instance v1, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    invoke-direct {v1, p1, v0}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;-><init>(Landroid/content/Context;Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;)V

    iput-object v1, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mPeerDeviceVerifier:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    return-void
.end method


# virtual methods
.method public final onStart()V
    .registers 3

    const-string v0, "AVF"

    const-string/jumbo v1, "Started"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mService:Lcom/android/server/security/AttestationVerificationManagerService$1;

    const-string/jumbo v1, "attestation_verification"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
