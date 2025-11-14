.class public final Lcom/samsung/security/securekeyblob/SecureKeyGenerator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mSamsungSecurekeyGeneratorBinder:Landroid/security/securekeygeneration/ISecureKeyGeneration;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->mSamsungSecurekeyGeneratorBinder:Landroid/security/securekeygeneration/ISecureKeyGeneration;

    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    return-void
.end method

.method public static getCertificates(Ljava/util/Collection;)[Ljava/security/cert/X509Certificate;
    .locals 5

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string/jumbo v1, "SecureKeyGenerator"

    if-nez v0, :cond_0

    const-string/jumbo p0, "there is no cert chain byte"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v4, v2

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    :try_start_0
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "Couldn\'t parse certificates in keystore"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/cert/X509Certificate;

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    aput-object v2, p0, v3

    move v3, v1

    goto :goto_2

    :cond_2
    return-object p0
.end method

.method public static getKeyStoreException(I)Landroid/security/KeyStoreException;
    .locals 2

    if-lez p0, :cond_7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key permanently invalidated"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key blob corrupted"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key not found"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_3
    new-instance v0, Landroid/security/KeyStoreException;

    const-string/jumbo v1, "Permission denied"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_4
    new-instance v0, Landroid/security/KeyStoreException;

    const-string/jumbo v1, "System error"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_5
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Keystore not initialized"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_6
    new-instance v0, Landroid/security/KeyStoreException;

    const-string/jumbo v1, "User authentication required"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_7
    const/16 v0, -0x10

    if-eq p0, v0, :cond_8

    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_8
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Invalid user authentication validity duration"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;
    .locals 2

    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, -0x70000000

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput p0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->blob([B)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Not a bytes tag: "

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;
    .locals 1

    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput p0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    sparse-switch p0, :sswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Not an enum or repeatable enum tag: "

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_0
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->paddingMode(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    return-object v0

    :sswitch_1
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->digest(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    return-object v0

    :sswitch_2
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->blockMode(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    return-object v0

    :sswitch_3
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->keyPurpose(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    return-object v0

    :sswitch_4
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->ecCurve(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    return-object v0

    :sswitch_5
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->algorithm(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000002 -> :sswitch_5
        0x1000000a -> :sswitch_4
        0x20000001 -> :sswitch_3
        0x20000004 -> :sswitch_2
        0x20000005 -> :sswitch_1
        0x20000006 -> :sswitch_0
        0x200000cb -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final generateKeyPair(Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;)Lcom/samsung/security/securekeyblob/SecureKeyResult;
    .locals 5

    iget-object v0, p1, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mServiceTAName:[B

    const/16 v1, 0xe0

    iget v2, p1, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mKeySize:I

    if-eq v2, v1, :cond_1

    const/16 v1, 0x100

    if-eq v2, v1, :cond_1

    const/16 v1, 0x180

    if-eq v2, v1, :cond_1

    const/16 v1, 0x209

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Unsupported EC key size: "

    const-string v0, " bits."

    invoke-static {v2, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;->mChallenge:[B

    if-eqz v1, :cond_6

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/security/securekeyblob/SecureKeyGenerator;Lcom/samsung/security/securekeyblob/SecureKeyGenParameterSpec;)V

    invoke-virtual {p0, v2}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->handleRemoteExceptionSecureKeyGeneration(Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda0;)Landroid/security/securekeygeneration/SecureKeyInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p1, p0, Landroid/security/securekeygeneration/SecureKeyInfo;->attestedCertificates:[Landroid/hardware/security/keymint/Certificate;

    if-eqz p1, :cond_4

    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    iget-object v4, v4, Landroid/hardware/security/keymint/Certificate;->encodedCertificate:[B

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x3

    if-lt p1, v2, :cond_3

    invoke-static {v1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->getCertificates(Ljava/util/Collection;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    new-instance v1, Lcom/samsung/security/securekeyblob/SecureKeyResult;

    iget-object p0, p0, Landroid/security/securekeygeneration/SecureKeyInfo;->blob:[B

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lcom/samsung/security/securekeyblob/SecureKeyResult;->mServiceKey:[B

    iput-object p1, v1, Lcom/samsung/security/securekeyblob/SecureKeyResult;->mCertificates:[Ljava/security/cert/X509Certificate;

    iput-object v0, v1, Lcom/samsung/security/securekeyblob/SecureKeyResult;->mServiceID:[B

    return-object v1

    :cond_3
    new-instance p0, Ljava/security/ProviderException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attestation certificate chain contained "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries. At least three are required."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "SecureKeyGeneration fail"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result p1

    const/16 v0, -0x42

    if-ne p1, v0, :cond_5

    new-instance p1, Lcom/samsung/security/securekeyblob/DeviceAttestationException;

    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object p0

    const-string v0, "Failed to generate attestation certificate chain with deviceIds"

    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/security/ProviderException;

    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object p0

    const-string v0, "Failed to generate attestation certificate chain"

    invoke-direct {p1, v0, p0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "challenge should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleRemoteExceptionSecureKeyGeneration(Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda0;)Landroid/security/securekeygeneration/SecureKeyInfo;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->mSamsungSecurekeyGeneratorBinder:Landroid/security/securekeygeneration/ISecureKeyGeneration;

    if-nez v0, :cond_2

    const-string/jumbo v0, "android.security.securekeygeneration"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sget v1, Landroid/security/securekeygeneration/ISecureKeyGeneration$Stub;->$r8$clinit:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "android.security.securekeygeneration.ISecureKeyGeneration"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/security/securekeygeneration/ISecureKeyGeneration;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/security/securekeygeneration/ISecureKeyGeneration;

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/security/securekeygeneration/ISecureKeyGeneration$Stub$Proxy;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroid/security/securekeygeneration/ISecureKeyGeneration$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->mSamsungSecurekeyGeneratorBinder:Landroid/security/securekeygeneration/ISecureKeyGeneration;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->mSamsungSecurekeyGeneratorBinder:Landroid/security/securekeygeneration/ISecureKeyGeneration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda0;->execute(Landroid/security/securekeygeneration/ISecureKeyGeneration;)Landroid/security/securekeygeneration/SecureKeyInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "SecureKeyGenerator"

    const-string v0, "Cannot connect to SamsungKeystore daemon."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Landroid/security/KeyStoreException;

    const/4 p1, 0x4

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    const-string/jumbo p1, "SecureKeyGenerator"

    const-string v0, "KeyStore exception"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Landroid/security/KeyStoreException;

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    const-string v0, ""

    invoke-direct {p1, p0, v0}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw p1

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
