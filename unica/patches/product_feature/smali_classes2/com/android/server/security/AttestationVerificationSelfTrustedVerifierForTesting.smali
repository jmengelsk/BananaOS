.class public final Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final GOLDEN_ALIAS:Ljava/lang/String;

.field public static volatile sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;


# instance fields
.field public final mCertPathValidator:Ljava/security/cert/CertPathValidator;

.field public final mCertificateFactory:Ljava/security/cert/CertificateFactory;

.field public final mGoldenRootCert:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".Golden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->GOLDEN_ALIAS:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->sAttestationVerificationSelfTrustedVerifier:Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    const-string/jumbo v0, "PKIX"

    invoke-static {v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    sget-object v3, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->GOLDEN_ALIAS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "EC"

    invoke-static {v4, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    new-instance v4, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/16 v5, 0xc

    invoke-direct {v4, v3, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    const-string/jumbo v5, "SHA-256"

    const-string/jumbo v6, "SHA-512"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    :cond_0
    invoke-virtual {v1, v3, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mGoldenRootCert:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public static getChallengeFromCert(Ljava/security/cert/X509Certificate;)[B
    .locals 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p0

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.11129.2.1.17"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final verifyAttestation(I[BLandroid/os/Bundle;)I
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    const/4 p2, 0x4

    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x3

    const/16 v2, 0x8

    const-string v3, "AVF"

    if-ne p1, v1, :cond_5

    invoke-virtual {p3}, Landroid/os/Bundle;->size()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    const-string/jumbo p0, "Requirements does not contain exactly 1 key."

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    const-string/jumbo v1, "localbinding.challenge"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo p0, "Requirements does not contain key: localbinding.challenge"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-static {v4}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->getChallengeFromCert(Ljava/security/cert/X509Certificate;)[B

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    invoke-static {p3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-nez p3, :cond_3

    const-string/jumbo p3, "Self-Trusted validation failed; challenge mismatch."

    invoke-static {v3, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v2, p1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v1, 0x2

    if-ge p3, v1, :cond_4

    const-string p0, "Certificate chain less than 2 in size."

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    :try_start_2
    iget-object p3, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {p3, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object p3

    new-instance v0, Ljava/security/cert/PKIXParameters;

    new-instance v1, Ljava/security/cert/TrustAnchor;

    iget-object v4, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mGoldenRootCert:Ljava/security/cert/X509Certificate;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, p1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->mCertPathValidator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {p0, p3, v0}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    :catchall_0
    move-exception p0

    const-string p1, "Invalid certificate chain"

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    or-int/lit8 p0, v2, 0x4

    return p0

    :catchall_1
    move-exception p0

    const-string/jumbo p1, "Unable to parse challenge from certificate."

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_5
    :goto_3
    const-string/jumbo p0, "Local binding requirements verification failure."

    invoke-static {p1, p0, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :goto_4
    const-string/jumbo p1, "Unable to parse certificates from attestation"

    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method
