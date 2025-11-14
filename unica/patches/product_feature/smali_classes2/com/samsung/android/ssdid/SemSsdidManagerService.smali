.class public final Lcom/samsung/android/ssdid/SemSsdidManagerService;
.super Lcom/samsung/android/ssdid/ISemSsdidManagerService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mSsdid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/ssdid/ISemSsdidManagerService$Stub;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mSsdid:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo p0, "SemSsdidManagerService"

    const-string/jumbo p1, "start"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final getSsdid()Ljava/lang/String;
    .registers 20

    move-object/from16 v1, p0

    const-string/jumbo v0, "invalid "

    iget-object v2, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.permission.READ_SSDID"

    const-string/jumbo v4, "required permissions"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mSsdid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string/jumbo v3, "SemSsdidManagerService"

    if-eqz v2, :cond_1a0

    const-string/jumbo v2, "ro.security.keystore.keytype"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "sakv2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    const-string/jumbo v8, "sakm"

    if-eqz v6, :cond_3b

    move-object v2, v5

    goto :goto_5a

    :cond_3b
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_59

    const-string/jumbo v2, "ro.product.first_api_level"

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v6, 0x22

    if-lt v2, v6, :cond_59

    const-string/jumbo v2, "m55xq"

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_59

    move-object v2, v8

    goto :goto_5a

    :cond_59
    move-object v2, v4

    :goto_5a
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const-string v9, ","

    const/4 v10, 0x0

    if-nez v6, :cond_116

    :try_start_63
    new-instance v6, Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-direct {v6}, Lcom/samsung/android/security/keystore/AttestationUtils;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_78

    new-array v0, v7, [B

    invoke-virtual {v6, v3, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Ljava/lang/String;[B)Ljava/security/KeyPair;

    goto :goto_ac

    :catch_75
    move-exception v0

    goto/16 :goto_10c

    :cond_78
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_104

    new-array v0, v7, [B

    new-instance v8, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v11, 0x4

    invoke-direct {v8, v3, v11}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v17, "SHA-384"

    const-string/jumbo v18, "SHA-512"

    const-string/jumbo v13, "NONE"

    const-string/jumbo v14, "SHA-1"

    const-string/jumbo v15, "SHA-224"

    const-string/jumbo v16, "SHA-256"

    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v8

    new-instance v11, Lcom/samsung/android/security/keystore/AttestParameterSpec;

    invoke-direct {v11, v0, v7, v12, v8}, Lcom/samsung/android/security/keystore/AttestParameterSpec;-><init>([BZZLandroid/security/keystore/KeyGenParameterSpec;)V

    invoke-virtual {v6, v11}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;

    :goto_ac
    invoke-static {v3}, Lcom/samsung/android/security/keystore/AttestationUtils;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    aget-object v0, v0, v7

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    goto :goto_c3

    :cond_bf
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    :goto_c3
    if-eqz v0, :cond_ce

    invoke-interface {v0}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_cf

    :cond_ce
    move-object v0, v10

    :goto_cf
    if-eqz v0, :cond_fd

    array-length v2, v0

    :goto_d2
    if-ge v7, v2, :cond_e4

    aget-object v5, v0, v7

    const-string/jumbo v6, "UID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_dd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_63 .. :try_end_dd} :catch_75
    .catch Ljava/security/ProviderException; {:try_start_63 .. :try_end_dd} :catch_75
    .catch Ljava/lang/NullPointerException; {:try_start_63 .. :try_end_dd} :catch_75

    if-eqz v6, :cond_e1

    move-object v10, v5

    goto :goto_e4

    :cond_e1
    add-int/lit8 v7, v7, 0x1

    goto :goto_d2

    :cond_e4
    :goto_e4
    const-string/jumbo v0, "sakUid: "

    invoke-static {v0, v10, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_112

    const-string v0, "\""

    invoke-virtual {v10, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    sub-int/2addr v2, v12

    aget-object v4, v0, v2

    goto :goto_112

    :cond_fd
    :try_start_fd
    const-string/jumbo v0, "not found UID in sak"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_112

    :cond_104
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fd .. :try_end_10b} :catch_75
    .catch Ljava/security/ProviderException; {:try_start_fd .. :try_end_10b} :catch_75
    .catch Ljava/lang/NullPointerException; {:try_start_fd .. :try_end_10b} :catch_75

    goto :goto_112

    :goto_10c
    const-string/jumbo v2, "exception"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_112
    :goto_112
    iput-object v4, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mSsdid:Ljava/lang/String;

    goto/16 :goto_1a0

    :cond_116
    const-string/jumbo v0, "getSsdid: can not read SAK"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12c

    const-string/jumbo v2, "unknown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12c

    goto :goto_160

    :cond_12c
    const-string v0, "/efs/FactoryApp/serial_no"

    :try_start_12e
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_13a} :catch_142

    :try_start_13a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_13e
    .catchall {:try_start_13a .. :try_end_13e} :catchall_144

    :try_start_13e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_141} :catch_142

    goto :goto_156

    :catch_142
    move-exception v0

    goto :goto_14f

    :catchall_144
    move-exception v0

    move-object v5, v0

    :try_start_146
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_149
    .catchall {:try_start_146 .. :try_end_149} :catchall_14a

    goto :goto_14e

    :catchall_14a
    move-exception v0

    :try_start_14b
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14e
    throw v5
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_14f} :catch_142

    :goto_14f
    const-string/jumbo v2, "exception in readFromFile"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v10

    :goto_156
    if-eqz v0, :cond_15f

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    goto :goto_160

    :cond_15f
    move-object v0, v10

    :goto_160
    iget-object v2, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "sem_wifi"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getFactoryMacAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_19e

    if-eqz v2, :cond_19e

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17a

    goto :goto_196

    :cond_17a
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :try_start_180
    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10
    :try_end_18e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_180 .. :try_end_18e} :catch_18f

    goto :goto_196

    :catch_18f
    move-exception v0

    const-string/jumbo v2, "exception during hash"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_196
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v4

    :cond_19e
    iput-object v4, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mSsdid:Ljava/lang/String;

    :cond_1a0
    :goto_1a0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getSsdid: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mSsdid:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/ssdid/SemSsdidManagerService;->mSsdid:Ljava/lang/String;

    return-object v0
.end method
