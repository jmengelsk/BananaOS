.class public final Lcom/samsung/android/security/keystore/AttestationUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mKeyStore:Landroid/security/KeyStore2;

.field public mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;

    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mKeyStore:Landroid/security/KeyStore2;

    return-void
.end method

.method public static deleteKey(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/security/KeyStoreException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p0
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_f
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_e} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getKeyStoreException(I)Landroid/security/KeyStoreException;
    .registers 3

    if-lez p0, :cond_5e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_55

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4d

    const/4 v0, 0x4

    if-eq p0, v0, :cond_44

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3b

    const/4 v0, 0x7

    if-eq p0, v0, :cond_33

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2b

    const/16 v0, 0x11

    if-eq p0, v0, :cond_23

    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_23
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key permanently invalidated"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_2b
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key blob corrupted"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_33
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key not found"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_3b
    new-instance v0, Landroid/security/KeyStoreException;

    const-string/jumbo v1, "Permission denied"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_44
    new-instance v0, Landroid/security/KeyStoreException;

    const-string/jumbo v1, "System error"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_4d
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Keystore not initialized"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_55
    new-instance v0, Landroid/security/KeyStoreException;

    const-string/jumbo v1, "User authentication required"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_5e
    const/16 v0, -0x10

    if-eq p0, v0, :cond_6c

    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_6c
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Invalid user authentication validity duration"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static makeBool(I)Landroid/hardware/security/keymint/KeyParameter;
    .registers 3

    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x70000000

    if-ne v0, v1, :cond_17

    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput p0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const/4 p0, 0x1

    invoke-static {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a boolean tag: "

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;
    .registers 4

    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, -0x70000000

    if-ne v0, v1, :cond_16

    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput p0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->blob([B)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    return-object v0

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Not a bytes tag: "

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final attestKey(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;
    .registers 13

    iget-object v0, p1, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a2

    iget-object v0, p1, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mChallenge:[B

    if-eqz v0, :cond_199

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, -0x6ffffd3c

    invoke-static {v2, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "samsung"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const v2, -0x6ffff7ca

    invoke-static {v2, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p1, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mVerifiableIntegrity:Z

    const-string v2, "AttestationUtils"

    if-eqz v0, :cond_139

    const v0, 0x700008fe

    invoke-static {v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_133

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_55

    :cond_54
    move-object v4, v3

    :goto_55
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_63

    const-string/jumbo v0, "packageName is null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11f

    :cond_63
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v5, 0x8000000

    const/4 v6, 0x0

    :try_start_6a
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_6e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6a .. :try_end_6e} :catch_99

    if-nez v0, :cond_77

    const-string/jumbo v0, "pkgInfo is null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    :cond_77
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    array-length v5, v0

    new-array v5, v5, [Ljava/security/PublicKey;

    array-length v7, v0

    move v8, v6

    move v9, v8

    :goto_83
    if-ge v8, v7, :cond_97

    aget-object v10, v0, v8

    :try_start_87
    invoke-virtual {v10}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    aput-object v10, v5, v9
    :try_end_8d
    .catch Ljava/security/cert/CertificateException; {:try_start_87 .. :try_end_8d} :catch_92

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_83

    :catch_92
    move-exception v0

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_9d

    :cond_97
    move-object v3, v5

    goto :goto_9d

    :catch_99
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_9d
    if-nez v3, :cond_ac

    const-string/jumbo v0, "pubKeys is null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    goto :goto_11f

    :cond_ac
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v5, v0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length v0, v3

    move v5, v6

    :goto_bd
    if-ge v5, v0, :cond_11b

    aget-object v7, v3, v5

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v9, ":"

    invoke-virtual {v9, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    array-length v10, v9

    invoke-virtual {v4, v9, v6, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v9

    invoke-interface {v7}, Ljava/security/PublicKey;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_112

    :try_start_db
    const-string/jumbo v10, "SHA-256"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10
    :try_end_e2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_db .. :try_end_e2} :catch_f8

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object v7

    array-length v8, v7

    invoke-virtual {v4, v7, v6, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_bd

    :catch_f8
    move-exception p0

    new-instance p1, Ljava/security/ProviderException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NoSuchAlgorithmException : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_112
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "msg == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11b
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :goto_11f
    if-eqz v3, :cond_12c

    const v0, -0x6ffff701

    invoke-static {v0, v3}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_139

    :cond_12c
    const-string/jumbo v0, "constructAttestationArguments : Auth package byte is null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_139

    :cond_133
    const-string/jumbo v0, "constructAttestationArguments : could not found application"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_139
    :goto_139
    iget-boolean v0, p1, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mSAKUidRequired:Z

    if-eqz v0, :cond_169

    const-string/jumbo v0, "constructAttestationArguments : set SAK UID required"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v3, "samsung.software.sakm_uid"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15f

    const-string/jumbo v0, "constructAttestationArguments : setSAKUidRequired API does not be supported in this model. This API is supported only in JDM models and the first API level needs to be higher than 34."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_169

    :cond_15f
    const v0, 0x700009c4

    invoke-static {v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_169
    :goto_169
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/security/keymint/KeyParameter;

    :try_start_175
    iget-object p1, p1, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->tryAttestation(Ljava/lang/String;[Landroid/hardware/security/keymint/KeyParameter;)Ljava/util/Collection;

    move-result-object p0
    :try_end_17f
    .catch Lcom/samsung/android/security/keystore/DeviceIdAttestationException; {:try_start_175 .. :try_end_17f} :catch_180

    return-object p0

    :catch_180
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incompatible argument detected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_199
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "constructAttestationArguments : The challenge cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "constructAttestationArguments : alias == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;
    .registers 6

    iget-object v0, p1, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getUid()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_38

    :try_start_13
    iget-object v2, p1, Lcom/samsung/android/security/keystore/AttestParameterSpec;->mAlgorithm:Ljava/lang/String;

    const-string v3, "AndroidKeyStore"

    invoke-static {v2, v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->attestKey(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->storeCertificateChain(Ljava/lang/String;Ljava/lang/Iterable;)V
    :try_end_29
    .catch Lcom/samsung/android/security/keystore/DeviceIdAttestationException; {:try_start_13 .. :try_end_29} :catch_2a
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_29} :catch_2a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_13 .. :try_end_29} :catch_2a
    .catch Ljava/security/KeyStoreException; {:try_start_13 .. :try_end_29} :catch_2a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_29} :catch_2a
    .catch Ljava/security/NoSuchProviderException; {:try_start_13 .. :try_end_29} :catch_2a

    return-object v0

    :catch_2a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p1, Ljava/security/ProviderException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    new-instance p0, Ljava/security/ProviderException;

    const-string p1, "Cannot generate key pair with empty alias or specified uid."

    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final generateKeyPair(Ljava/lang/String;[B)Ljava/security/KeyPair;
    .registers 11

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    if-eqz p2, :cond_37

    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v6, "SHA-384"

    const-string/jumbo v7, "SHA-512"

    const-string/jumbo v2, "NONE"

    const-string/jumbo v3, "SHA-1"

    const-string/jumbo v4, "SHA-224"

    const-string/jumbo v5, "SHA-256"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/security/keystore/AttestParameterSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, v1, p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;-><init>([BZZLandroid/security/keystore/KeyGenParameterSpec;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;

    move-result-object p0

    return-object p0

    :cond_37
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "challenge == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "alias must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleRemoteExceptionSamsungAttestation(Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;)Ljava/lang/Object;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;

    if-nez v0, :cond_30

    const-string/jumbo v0, "android.security.samsungattestation"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sget v1, Landroid/security/samsungattestation/ISamsungAttestation$Stub;->$r8$clinit:I

    if-nez v0, :cond_12

    const/4 v0, 0x0

    goto :goto_2b

    :cond_12
    const-string/jumbo v1, "android.security.samsungattestation.ISamsungAttestation"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_23

    instance-of v2, v1, Landroid/security/samsungattestation/ISamsungAttestation;

    if-eqz v2, :cond_23

    move-object v0, v1

    check-cast v0, Landroid/security/samsungattestation/ISamsungAttestation;

    goto :goto_2b

    :cond_23
    new-instance v1, Landroid/security/samsungattestation/ISamsungAttestation$Stub$Proxy;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroid/security/samsungattestation/ISamsungAttestation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    move-object v0, v1

    :goto_2b
    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;

    goto :goto_30

    :catchall_2e
    move-exception p1

    goto :goto_5b

    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_2e

    monitor-exit p0

    :try_start_33
    invoke-virtual {p1, v0}, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;->execute(Landroid/security/samsungattestation/ISamsungAttestation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_37
    .catch Landroid/os/ServiceSpecificException; {:try_start_33 .. :try_end_37} :catch_49
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_37} :catch_38

    return-object p0

    :catch_38
    move-exception p0

    const-string p1, "AttestationUtils"

    const-string v0, "Cannot connect to SamsungKeystore daemon."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Landroid/security/KeyStoreException;

    const/4 p1, 0x4

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_49
    move-exception p0

    const-string p1, "AttestationUtils"

    const-string v0, "KeyStore exception"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Landroid/security/KeyStoreException;

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    const-string v0, ""

    invoke-direct {p1, p0, v0}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw p1

    :goto_5b
    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_2e

    throw p1
.end method

.method public final storeCertificateChain(Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8a

    :try_start_6
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0
    :try_end_14
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_14} :catch_7c
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_14} :catch_7c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_7c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_14} :catch_7c

    if-eqz v0, :cond_74

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_29

    const-string p0, "AttestationUtils"

    const-string/jumbo p1, "there is no cert chain byte"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_36

    return-void

    :cond_36
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_3b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v5, v3

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3b

    :cond_4d
    :try_start_4d
    new-instance p2, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {p2}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    iput v4, p2, Landroid/system/keystore2/KeyDescriptor;->domain:I

    const-wide/16 v3, -0x1

    iput-wide v3, p2, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iput-object p1, p2, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iput-object v1, p2, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    iget-object p0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p2, v0, p1}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_65
    .catch Landroid/security/KeyStoreException; {:try_start_4d .. :try_end_65} :catch_66

    return-void

    :catch_66
    move-exception p0

    invoke-virtual {p0}, Landroid/security/KeyStoreException;->printStackTrace()V

    new-instance p1, Ljava/security/KeyStoreException;

    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_74
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "Entry exists and is not a trusted certificate"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_7c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p1, Ljava/security/KeyStoreException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "alias == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final tryAttestation(Ljava/lang/String;[Landroid/hardware/security/keymint/KeyParameter;)Ljava/util/Collection;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance v1, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v1}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Landroid/system/keystore2/KeyDescriptor;->domain:I

    const-wide/16 v3, -0x1

    iput-wide v3, v1, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iput-object p1, v1, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, v1, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    new-instance p1, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1, p2}, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;-><init>(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->handleRemoteExceptionSamsungAttestation(Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/security/keymint/Certificate;

    if-eqz p0, :cond_55

    array-length p1, p0

    :goto_24
    if-ge v2, p1, :cond_30

    aget-object p2, p0, v2

    iget-object p2, p2, Landroid/hardware/security/keymint/Certificate;->encodedCertificate:[B

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Landroid/security/KeyStoreException; {:try_start_5 .. :try_end_2d} :catch_5e

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x3

    if-lt p0, p1, :cond_38

    return-object v0

    :cond_38
    new-instance p0, Ljava/security/ProviderException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Attestation certificate chain contained "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " entries. At least three are required."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_55
    :try_start_55
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "chain == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5e
    .catch Landroid/security/KeyStoreException; {:try_start_55 .. :try_end_5e} :catch_5e

    :catch_5e
    move-exception p0

    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result p1

    const/16 p2, -0x42

    if-ne p1, p2, :cond_77

    new-instance p1, Lcom/samsung/android/security/keystore/DeviceIdAttestationException;

    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/security/keystore/AttestationUtils;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object p0

    const-string p2, "Failed to generate attestation certificate chain with deviceId"

    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_77
    new-instance p1, Ljava/security/ProviderException;

    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/security/keystore/AttestationUtils;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object p0

    const-string p2, "Failed to generate attestation certificate chain"

    invoke-direct {p1, p2, p0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
