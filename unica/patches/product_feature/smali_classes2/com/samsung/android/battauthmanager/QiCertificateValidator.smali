.class public final Lcom/samsung/android/battauthmanager/QiCertificateValidator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final wpcRootCert:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x130

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/battauthmanager/QiCertificateValidator;->wpcRootCert:[B

    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const-string v0, "Bouncy Castle provider has been added."

    const-string v1, "BattAuthManager_QiCertificateValidator"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        -0x7et
        0x1t
        0x2ct
        0x30t
        -0x7ft
        -0x2dt
        -0x60t
        0x3t
        0x2t
        0x1t
        0x2t
        0x2t
        0x8t
        0x77t
        0x61t
        0x12t
        -0x4ct
        0x11t
        0x47t
        -0x66t
        -0x54t
        0x30t
        0xat
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x4t
        0x3t
        0x2t
        0x30t
        0x11t
        0x31t
        0xft
        0x30t
        0xdt
        0x6t
        0x3t
        0x55t
        0x4t
        0x3t
        0xct
        0x6t
        0x57t
        0x50t
        0x43t
        0x43t
        0x41t
        0x31t
        0x30t
        0x20t
        0x17t
        0xdt
        0x32t
        0x31t
        0x30t
        0x33t
        0x30t
        0x33t
        0x31t
        0x36t
        0x30t
        0x34t
        0x30t
        0x31t
        0x5at
        0x18t
        0xft
        0x39t
        0x39t
        0x39t
        0x39t
        0x31t
        0x32t
        0x33t
        0x31t
        0x32t
        0x33t
        0x35t
        0x39t
        0x35t
        0x39t
        0x5at
        0x30t
        0x11t
        0x31t
        0xft
        0x30t
        0xdt
        0x6t
        0x3t
        0x55t
        0x4t
        0x3t
        0xct
        0x6t
        0x57t
        0x50t
        0x43t
        0x43t
        0x41t
        0x31t
        0x30t
        0x59t
        0x30t
        0x13t
        0x6t
        0x7t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x2t
        0x1t
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
        0x3t
        0x42t
        0x0t
        0x4t
        0x4t
        -0x7ct
        0x7t
        0x20t
        -0x4dt
        -0x5dt
        -0x4ft
        0x79t
        -0x30t
        0x6ct
        0x77t
        -0x53t
        -0x60t
        0x0t
        0x44t
        -0x2et
        -0x31t
        0x20t
        -0x65t
        -0x3dt
        0x3ct
        -0x1dt
        0x44t
        -0x66t
        0x8t
        -0x3at
        0x7ft
        -0x71t
        -0xbt
        0x3t
        0x73t
        0x63t
        -0x60t
        0x43t
        -0xbt
        -0x70t
        0x71t
        -0x70t
        -0x51t
        -0x49t
        -0x44t
        -0xft
        -0x4t
        -0x5at
        0x67t
        -0x35t
        0x5et
        -0x3dt
        -0x16t
        0x19t
        -0x7t
        0x6at
        0x7bt
        0x41t
        0x1ft
        0x3dt
        -0x73t
        0x63t
        0x30t
        0x48t
        0x2dt
        0x7et
        0x28t
        0x12t
        -0x5dt
        0x13t
        0x30t
        0x11t
        0x30t
        0xft
        0x6t
        0x3t
        0x55t
        0x1dt
        0x13t
        0x1t
        0x1t
        -0x1t
        0x4t
        0x5t
        0x30t
        0x3t
        0x1t
        0x1t
        -0x1t
        0x30t
        0xat
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x4t
        0x3t
        0x2t
        0x3t
        0x48t
        0x0t
        0x30t
        0x45t
        0x2t
        0x20t
        0x69t
        -0x40t
        -0x49t
        0x15t
        -0x1et
        -0x40t
        0x6at
        -0xat
        -0x78t
        -0x7t
        -0x4at
        0x47t
        -0x5dt
        -0x71t
        0x53t
        0x67t
        -0x2bt
        0x2t
        -0x5at
        -0xbt
        -0x22t
        0x55t
        -0x47t
        0x5t
        -0x5ft
        0x2t
        0x5at
        -0x43t
        0x42t
        0x71t
        -0xct
        0x68t
        0x2t
        0x21t
        0x0t
        -0x61t
        0x5ft
        0x4ft
        0x3ft
        0x76t
        0x20t
        -0x52t
        0x17t
        0x74t
        -0x28t
        0x4t
        -0x44t
        0x71t
        -0x66t
        -0x5ft
        -0x65t
        0x50t
        0x55t
        -0x45t
        -0x5et
        -0x13t
        0x4dt
        -0x1at
        0x40t
        -0x3t
        0x54t
        -0x6t
        0x39t
        0x5bt
        -0x13t
        0x5dt
        -0x48t
    .end array-data
.end method

.method public static getDerLength(I[B)I
    .locals 4

    const-string v0, "BattAuthManager_QiCertificateValidator"

    const/4 v1, -0x1

    :try_start_0
    array-length v2, p1

    add-int/lit8 v3, p0, 0x2

    if-ge v2, v3, :cond_0

    const-string p0, "Invalid input data or offset"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    aget-byte v2, p1, p0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 p0, p0, 0x1

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v2

    const p1, 0x8000

    if-ne p0, p1, :cond_1

    const-string p0, "Indefiite length encoding is not supported."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_1
    return p0

    :goto_0
    const-string p1, "ArrayIndexOutOfBoundsException occurred during length calculation."

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static getPublicKey(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Ljava/security/PublicKey;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error generating PublicKey: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BattAuthManager_QiCertificateValidator"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadCertificate([B)Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    new-instance v2, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error loading certificate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BattAuthManager_QiCertificateValidator"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static toFixedLength(Ljava/math/BigInteger;)[B
    .locals 5

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    array-length v1, v0

    const/16 v3, 0x21

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    aget-byte v1, v0, v4

    if-nez v1, :cond_1

    new-array p0, v2, [B

    const/4 v1, 0x1

    invoke-static {v0, v1, p0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_1
    array-length v1, v0

    if-ge v1, v2, :cond_2

    new-array p0, v2, [B

    array-length v1, v0

    sub-int/2addr v2, v1

    array-length v1, v0

    invoke-static {v0, v4, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot convert BigInteger to fixed length. Value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BattAuthManager_QiCertificateValidator"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static validateCertificate(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Ljava/security/PublicKey;Ljava/util/Date;Z)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "BattAuthManager_QiCertificateValidator"

    if-nez v0, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Certificate validity period is valid: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    invoke-static {p0}, Lcom/samsung/android/battauthmanager/QiCertificateValidator;->getPublicKey(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)Ljava/security/PublicKey;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/battauthmanager/QiCertificateValidator;->verifySignature(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Ljava/security/PublicKey;)Z

    move-result p0

    return p0

    :cond_2
    invoke-static {p0, p1}, Lcom/samsung/android/battauthmanager/QiCertificateValidator;->verifySignature(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Ljava/security/PublicKey;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Certificate validity period is invalid: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static verifySignature(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;Ljava/security/PublicKey;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const-string v3, "BattAuthManager_QiCertificateValidator"

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "1.2.840.10045.4.3.2"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v5, "1.2.840.10045.4.3.1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v5, "1.2.840.113549.1.1.11"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    packed-switch v4, :pswitch_data_0

    const-string/jumbo v4, "Unsupported signature algorithm OID: "

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_1

    :pswitch_0
    const-string/jumbo v1, "SHA256withECDSA"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v1, "SHA1withECDSA"

    goto :goto_1

    :pswitch_2
    const-string/jumbo v1, "SHA256withRSA"

    :goto_1
    if-nez v1, :cond_3

    const-string/jumbo p0, "Unsupported signature algorithm."

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    :try_start_0
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-virtual {v4, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object p1

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    instance-of v5, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v5, :cond_4

    const-string p1, "Invalid certificate format"

    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    :try_start_5
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_5

    const-string p1, "Invalid certificate structure"

    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-object v2, p1

    goto :goto_6

    :goto_3
    :try_start_7
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    :try_start_8
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Error extracting TBSCertificate: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    if-nez v2, :cond_6

    return v0

    :cond_6
    :try_start_9
    invoke-virtual {v4, v2}, Ljava/security/Signature;->update([B)V
    :try_end_9
    .catch Ljava/security/SignatureException; {:try_start_9 .. :try_end_9} :catch_2

    :try_start_a
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSignature()[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_a
    .catch Ljava/security/SignatureException; {:try_start_a .. :try_end_a} :catch_1

    const-string/jumbo p1, "Signature verification result: "

    invoke-static {p1, v3, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error verifying signature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :catch_2
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error updating signature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :catch_3
    move-exception p0

    const-string p1, "Failed to initialize signature verification: "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :catch_4
    move-exception p0

    const-string/jumbo p1, "Unsupported signature algorithm: "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x20e135d2 -> :sswitch_2
        0x15f8b34d -> :sswitch_1
        0x15f8b34e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
