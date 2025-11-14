.class public Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ANDROID_SYSTEM_PACKAGE_NAME_SET:Ljava/util/Set;


# instance fields
.field public final mCertPathValidator:Ljava/security/cert/CertPathValidator;

.field public final mCertificateFactory:Ljava/security/cert/CertificateFactory;

.field public final mCertificateRevocationStatusManager:Lcom/android/server/security/CertificateRevocationStatusManager;

.field public final mContext:Landroid/content/Context;

.field public final mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

.field public final mRevocationEnabled:Z

.field public final mTestLocalPatchDate:Ljava/time/LocalDate;

.field public final mTestSystemDate:Ljava/time/LocalDate;

.field public final mTrustAnchors:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AndroidSystem"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->ANDROID_SYSTEM_PACKAGE_NAME_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    const-string/jumbo p2, "X.509"

    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    const-string/jumbo p2, "PKIX"

    invoke-static {p2}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x107021a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    new-instance v4, Ljava/security/cert/TrustAnchor;

    iget-object v5, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v7, "\\s+"

    const-string v8, "\n"

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "-BEGIN\\nCERTIFICATE-"

    const-string v8, "-BEGIN CERTIFICATE-"

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "-END\\nCERTIFICATE-"

    const-string v8, "-END CERTIFICATE-"

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-direct {v4, v3, v2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    new-instance p1, Lcom/android/server/security/CertificateRevocationStatusManager;

    iget-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/server/security/CertificateRevocationStatusManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateRevocationStatusManager:Lcom/android/server/security/CertificateRevocationStatusManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    iput-object v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    iput-object v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    const-string p2, "Invalid trust anchor certificate."

    invoke-direct {p1, p2, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;Ljava/util/Set;ZLjava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;Z",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mDumpLogger:Lcom/android/server/security/AttestationVerificationManagerService$DumpLogger;

    const-string/jumbo p2, "X.509"

    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    const-string/jumbo p2, "PKIX"

    invoke-static {p2}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    iput-object p3, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    new-instance p2, Lcom/android/server/security/CertificateRevocationStatusManager;

    invoke-direct {p2, p1}, Lcom/android/server/security/CertificateRevocationStatusManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateRevocationStatusManager:Lcom/android/server/security/CertificateRevocationStatusManager;

    iput-boolean p4, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    iput-object p5, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    iput-object p6, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    return-void
.end method

.method public static checkLocalBindingRequirements(Ljava/security/cert/X509Certificate;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;ILandroid/os/Bundle;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)Z
    .locals 3

    iput p2, p4, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBindingType:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "AVF"

    if-eq p2, v0, :cond_1

    const/4 p0, 0x3

    if-ne p2, p0, :cond_0

    const-string/jumbo p0, "localbinding.challenge"

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    iget-object p2, p1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-static {p2, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_2

    const-string/jumbo p0, "Provided challenge does not match leaf certificate challenge."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Unsupported local binding type "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/security/attestationverification/AttestationVerificationManager;->localBindingTypeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string/jumbo p2, "localbinding.public_key"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_2

    const-string/jumbo p0, "Provided public key does not match leaf certificate public key."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x1

    iput-boolean p0, p4, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBindingOk:Z

    const-string/jumbo p2, "android.key_owned_by_system"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean p0, p4, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mSystemOwnershipChecked:Z

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationPackageNameVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    sget-object p2, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->ANDROID_SYSTEM_PACKAGE_NAME_SET:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Owner is not system, packages="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Certificate public key is not owned by the AndroidSystem."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iput-boolean p0, p4, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mSystemOwned:Z

    return p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "The value of the requirement key android.key_owned_by_system cannot be false. You can remove the key if you don\'t want to verify it."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return p0
.end method

.method public static validateAttestationParameters(ILandroid/os/Bundle;)Z
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x0

    const-string v2, "AVF"

    const/4 v3, 0x2

    if-eq p0, v3, :cond_0

    if-eq p0, v0, :cond_0

    const-string p1, "Binding type is not supported: "

    invoke-static {p0, p1, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    const-string p0, "At least 1 requirement is required."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    if-ne p0, v3, :cond_2

    const-string/jumbo v3, "localbinding.public_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo p0, "Requirements does not contain key: localbinding.public_key"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    if-ne p0, v0, :cond_3

    const-string/jumbo p0, "localbinding.challenge"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string/jumbo p0, "Requirements does not contain key: localbinding.challenge"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    return v5
.end method


# virtual methods
.method public final checkAttestationForPeerDeviceProfile(Landroid/os/Bundle;Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;)I
    .locals 7

    const-string/jumbo v0, "VerifiedBootLocked is not set."

    iget-object v1, p2, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    const/16 v3, 0x10

    const/4 v4, 0x1

    const-string v5, "AVF"

    if-ge v1, v2, :cond_0

    const-string v1, "Attestation version is not at least 3 (Keymaster 4)."

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_0

    :cond_0
    iput-boolean v4, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mAttestationVersionAtLeast3:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p2, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterVersion:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x4

    if-ge v2, v6, :cond_1

    const-string v1, "Keymaster version is not at least 4."

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_1

    :cond_1
    iput-boolean v4, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeymasterVersionAtLeast4:Z

    :goto_1
    iget-object v2, p2, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsVersion:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v6, 0x186a0

    if-ge v2, v6, :cond_2

    const-string v1, "Android OS version is not 10+."

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_2

    :cond_2
    iput-boolean v4, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mOsVersionAtLeast10:Z

    :goto_2
    iget-boolean v2, p2, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationHardwareBacked:Z

    if-nez v2, :cond_3

    const-string v1, "Key is not HW backed."

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_3

    :cond_3
    iput-boolean v4, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyHwBacked:Z

    :goto_3
    iget-boolean v2, p2, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterHardwareBacked:Z

    if-nez v2, :cond_4

    const-string v1, "Keymaster is not HW backed."

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    iput-boolean v4, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeymasterHwBacked:Z

    move v3, v1

    :goto_4
    sget-object v1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->VERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    iget-object v2, p2, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    if-eq v2, v1, :cond_5

    const-string v1, "Boot state not Verified."

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v3, v3, 0x20

    goto :goto_5

    :cond_5
    iput-boolean v4, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mBootStateIsVerified:Z

    :goto_5
    :try_start_0
    iget-object v1, p2, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootLocked:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "Verified boot state is not locked."

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v3, v3, 0x20

    goto :goto_7

    :catch_0
    move-exception v1

    goto :goto_6

    :cond_6
    iput-boolean v4, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mVerifiedBootStateLocked:Z

    goto :goto_7

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    invoke-static {v5, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v3, 0x20

    :goto_7
    const-string/jumbo v0, "param_max_patch_level_diff_months"

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p2, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsPatchLevel:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(II)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "OS patch level is not within valid range."

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v3, v3, 0x40

    goto :goto_8

    :cond_8
    iput-boolean v4, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mOsPatchLevelInRange:Z

    :goto_8
    iget-object v0, p2, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyBootPatchLevel:Ljava/lang/Integer;

    const-string v1, "KeyBootPatchLevel is not set."

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(II)Z

    move-result v0

    const-string v2, "Boot patch level is not within valid range."

    if-nez v0, :cond_9

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v3, v3, 0x40

    goto :goto_9

    :cond_9
    iput-boolean v4, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyBootPatchLevelInRange:Z

    :goto_9
    iget-object v0, p2, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyVendorPatchLevel:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(II)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "Vendor patch level is not within valid range."

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v3, v3, 0x40

    goto :goto_a

    :cond_a
    iput-boolean v4, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyVendorPatchLevelInRange:Z

    :goto_a
    iget-object p2, p2, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyBootPatchLevel:Ljava/lang/Integer;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->isValidPatchLevel(II)Z

    move-result p0

    if-nez p0, :cond_b

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v3, v3, 0x40

    goto :goto_b

    :cond_b
    iput-boolean v4, p3, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier$MyDumpData;->mKeyBootPatchLevelInRange:Z

    :goto_b
    return v3

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "KeyVendorPatchLevel is not set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "KeyOsPatchLevel is not set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "KeyOsVersion is not set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCertificates([B)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {p1, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final isValidPatchLevel(II)Z
    .locals 8

    const-string v0, "AVF"

    iget-object v1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestSystemDate:Ljava/time/LocalDate;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v1}, Ljava/time/LocalDate;->now(Ljava/time/ZoneId;)Ljava/time/LocalDate;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTestLocalPatchDate:Ljava/time/LocalDate;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-static {p0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    sget-object v3, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v3, p0, v1}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v4

    const-wide/16 v6, 0xc

    cmp-long v1, v4, v6

    const/4 v4, 0x1

    if-lez v1, :cond_2

    return v4

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x6

    if-eq v1, v5, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v6, 0x8

    if-eq v1, v6, :cond_3

    const-string/jumbo p0, "Patch level is not in format YYYYMM or YYYYMMDD"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v1, p1, v4}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    int-to-long v0, p2

    cmp-long p0, p0, v0

    if-gtz p0, :cond_4

    return v4

    :cond_4
    return v2

    :catchall_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Build.VERSION.SECURITY_PATCH: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not in format YYYY-MM-DD"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final validateCertificateChain(Ljava/util/List;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v1, p1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object p1

    new-instance v1, Ljava/security/cert/PKIXParameters;

    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mTrustAnchors:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    iget-object v3, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v3, p1, v1}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    iget-boolean p1, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mRevocationEnabled:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->mCertificateRevocationStatusManager:Lcom/android/server/security/CertificateRevocationStatusManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "AVF_CRL"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "Certificate serial number cannot be null."

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object p1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mTestStoredRevocationListFile:Ljava/io/File;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "certificate_revocation_list.json"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {}, Ljava/time/OffsetDateTime;->now()Ljava/time/OffsetDateTime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v5

    invoke-static {v3, v4, v2, v5}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    const-wide/16 v3, 0x18

    invoke-virtual {p1, v3, v4}, Ljava/time/LocalDateTime;->minusHours(J)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "CRL is fetched recently, do not fetch again."

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/security/CertificateRevocationStatusManager;->getStoredRevocationList()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/server/security/CertificateRevocationStatusManager;->checkRevocationStatus(Lorg/json/JSONObject;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/security/CertificateRevocationStatusManager;->fetchRemoteRevocationListBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/security/CertificateRevocationStatusManager;->silentlyStoreRevocationList([B)V

    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "entries"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/server/security/CertificateRevocationStatusManager;->checkRevocationStatus(Lorg/json/JSONObject;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const-string v2, "Fallback to check stored revocation status"

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mShouldScheduleJob:Z

    if-eqz p1, :cond_4

    new-instance p1, Lcom/android/server/security/CertificateRevocationStatusManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/security/CertificateRevocationStatusManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/security/CertificateRevocationStatusManager;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/security/CertificateRevocationStatusManager;->getStoredRevocationList()Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/server/security/CertificateRevocationStatusManager;->checkRevocationStatus(Lorg/json/JSONObject;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v0, "Unable to load or parse stored revocation status"

    invoke-direct {p1, v0, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    :goto_2
    return-void

    :cond_6
    const-string p0, "AVF"

    const-string p1, "Certificate chain less than 2 in size."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/security/cert/CertificateException;

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
