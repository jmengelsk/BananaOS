.class public abstract Lcom/android/server/pm/ApkChecksums;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/Certificate;

    return-void
.end method

.method public static buildDigestsPathForApk(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".digests"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Code path is not an apk "

    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V
    .locals 6

    and-int/2addr p3, p4

    if-eqz p3, :cond_5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    const-string p3, "ApkChecksums"

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-array v0, v0, [B

    const/4 v3, 0x2

    if-eq p4, v3, :cond_3

    const/4 v3, 0x4

    if-eq p4, v3, :cond_2

    const/16 v3, 0x8

    if-eq p4, v3, :cond_1

    const/16 v3, 0x10

    if-ne p4, v3, :cond_0

    const-string/jumbo v3, "SHA512"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid checksum type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v3, "SHA256"

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "SHA1"

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "MD5"

    :goto_0
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v0

    goto :goto_6

    :catch_0
    move-exception p2

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    const-string v0, "Device does not support MessageDigest algorithm"

    invoke-static {p3, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error reading "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to compute hash."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    if-eqz v1, :cond_5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Landroid/content/pm/ApkChecksum;

    invoke-direct {p3, p1, p4, v1}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public static convertToSet([Ljava/security/cert/Certificate;)Ljava/util/Set;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    new-instance v4, Landroid/content/pm/Signature;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/content/pm/Signature;-><init>([B)V

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getAvailableApkChecksums(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;[Ljava/security/cert/Certificate;Ljava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_14

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7, v2, v5}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v0

    const/4 v8, 0x0

    const-string v9, "ApkChecksums"

    if-eqz v0, :cond_3

    invoke-static {v6}, Lcom/android/internal/security/VerityUtils;->hasFsverity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v6}, Lcom/android/internal/security/VerityUtils;->getFsverityDigest(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v10, Landroid/content/pm/ApkChecksum;

    invoke-direct {v10, v1, v7, v0}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v6}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->extractCertificates(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    move-result-object v0

    iget-object v0, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_2

    new-instance v10, Landroid/content/pm/ApkChecksum;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v0}, Lcom/android/server/pm/ApkChecksums;->verityHashForFile(Ljava/io/File;[B)[B

    move-result-object v0

    invoke-direct {v10, v1, v7, v0}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v10, "V4 signature error"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_2
    move-object v10, v8

    :goto_0
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/content/pm/ApkChecksum;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v11, v5

    check-cast v11, Landroid/util/ArrayMap;

    invoke-virtual {v11, v0, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/16 v0, 0x20

    invoke-static {v0, v2, v5}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v10

    const/16 v11, 0x40

    const/4 v12, 0x0

    if-nez v10, :cond_4

    invoke-static {v11, v2, v5}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_4
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v10

    const/4 v13, 0x2

    invoke-static {v10, v6, v13, v12}, Landroid/util/apk/ApkSignatureVerifier;->verifySignaturesInternal(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v10

    instance-of v10, v10, Landroid/util/apk/SignatureNotFoundException;

    if-nez v10, :cond_5

    const-string/jumbo v10, "Signature verification error"

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v6

    invoke-static {v9, v10, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    move-object v6, v8

    goto :goto_1

    :cond_6
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    iget-object v6, v6, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;->contentDigests:Ljava/util/Map;

    :goto_1
    if-nez v6, :cond_7

    move-object v10, v8

    goto :goto_2

    :cond_7
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    and-int/lit8 v14, v2, 0x20

    if-eqz v14, :cond_8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    if-eqz v7, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Landroid/content/pm/ApkChecksum;

    invoke-direct {v15, v1, v0, v7}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v10, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/content/pm/ApkChecksum;

    invoke-direct {v7, v1, v11, v0}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v10, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_2
    if-eqz v10, :cond_a

    move-object v0, v5

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    :cond_a
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_14

    :cond_b
    if-eqz v4, :cond_c

    array-length v0, v4

    if-nez v0, :cond_c

    goto/16 :goto_14

    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ApkChecksums;->buildDigestsPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3

    :cond_d
    move-object v6, v8

    :goto_3
    if-nez v6, :cond_e

    goto/16 :goto_14

    :cond_e
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v7, ".signature"

    invoke-static {v0, v7}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_4

    :cond_f
    move-object v7, v8

    :goto_4
    :try_start_1
    invoke-static {v6}, Lcom/android/server/pm/ApkChecksums;->readChecksums(Ljava/io/File;)[Landroid/content/pm/Checksum;

    move-result-object v0

    if-eqz v7, :cond_13

    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v10

    invoke-static {v10}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/server/pm/ApkChecksums;->verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;

    move-result-object v10

    if-eqz v10, :cond_12

    array-length v11, v10

    if-nez v11, :cond_10

    goto :goto_6

    :cond_10
    array-length v11, v10

    new-array v11, v11, [Landroid/content/pm/Signature;

    array-length v13, v10

    move v14, v12

    :goto_5
    if-ge v14, v13, :cond_11

    new-instance v15, Landroid/content/pm/Signature;

    aget-object v16, v10, v14

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v8

    invoke-direct {v15, v8}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v15, v11, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x0

    goto :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_11

    :catch_3
    move-exception v0

    goto/16 :goto_12

    :catch_4
    move-exception v0

    goto/16 :goto_13

    :cond_11
    const/4 v8, 0x0

    goto :goto_7

    :cond_12
    :goto_6
    const-string v0, "Error validating signature"

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_13
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/ApkChecksums$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    if-nez v8, :cond_14

    const-string v0, "Installer package not found."

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_14
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v11

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v8

    :goto_7
    if-eqz v11, :cond_22

    array-length v10, v11

    if-eqz v10, :cond_22

    aget-object v10, v11, v12

    if-nez v10, :cond_15

    goto/16 :goto_10

    :cond_15
    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v10

    invoke-static {v4}, Lcom/android/server/pm/ApkChecksums;->convertToSet([Ljava/security/cert/Certificate;)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_1d

    move-object v13, v4

    check-cast v13, Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1d

    array-length v10, v11

    move v13, v12

    :goto_8
    if-ge v13, v10, :cond_17

    aget-object v14, v11, v13

    move-object v15, v4

    check-cast v15, Landroid/util/ArraySet;

    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    goto :goto_9

    :cond_16
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_17
    const/4 v14, 0x0

    :goto_9
    if-nez v14, :cond_1b

    if-nez v8, :cond_18

    goto :goto_b

    :cond_18
    array-length v10, v8

    move v11, v12

    :goto_a
    if-ge v11, v10, :cond_1a

    aget-object v13, v8, v11

    move-object v14, v4

    check-cast v14, Landroid/util/ArraySet;

    invoke-virtual {v14, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    move-object v8, v13

    goto :goto_c

    :cond_19
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_1a
    :goto_b
    const/4 v8, 0x0

    :goto_c
    move-object v14, v8

    :cond_1b
    if-nez v14, :cond_1c

    goto/16 :goto_14

    :cond_1c
    invoke-virtual {v14}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v10

    :cond_1d
    array-length v4, v0

    move v8, v12

    :goto_d
    if-ge v8, v4, :cond_20

    aget-object v11, v0, v8

    invoke-virtual {v11}, Landroid/content/pm/Checksum;->getType()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object v14, v5

    check-cast v14, Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ApkChecksum;

    if-eqz v13, :cond_1f

    invoke-virtual {v13}, Landroid/content/pm/ApkChecksum;->getValue()[B

    move-result-object v13

    invoke-virtual {v11}, Landroid/content/pm/Checksum;->getValue()[B

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    if-eqz v13, :cond_1e

    goto :goto_e

    :cond_1e
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "System digest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/content/pm/Checksum;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mismatch, can\'t bind installer-provided digests to the APK."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_20
    array-length v4, v0

    :goto_f
    if-ge v12, v4, :cond_23

    aget-object v8, v0, v12

    invoke-virtual {v8}, Landroid/content/pm/Checksum;->getType()I

    move-result v11

    invoke-static {v11, v2, v5}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-virtual {v8}, Landroid/content/pm/Checksum;->getType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v13, Landroid/content/pm/ApkChecksum;

    invoke-direct {v13, v1, v8, v3, v10}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;Landroid/content/pm/Checksum;Ljava/lang/String;[B)V

    move-object v8, v5

    check-cast v8, Landroid/util/ArrayMap;

    invoke-virtual {v8, v11, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_22
    :goto_10
    const-string v0, "Can\'t obtain certificates."

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_14

    :goto_11
    const-string v1, "Error encoding trustedInstallers"

    invoke-static {v9, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :goto_12
    const-string v1, "Error validating digests. Invalid digests will be removed"

    invoke-static {v9, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_2
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    if-eqz v7, :cond_23

    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_14

    :goto_13
    const-string v1, "Error reading .digests or .signature"

    invoke-static {v9, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_5
    :cond_23
    :goto_14
    return-void
.end method

.method public static getChecksums(Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;)V
    .locals 12

    new-instance v2, Ljava/util/ArrayList;

    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/io/File;

    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int v7, p1, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v11, p6

    :try_start_0
    invoke-static/range {v5 .. v11}, Lcom/android/server/pm/ApkChecksums;->getAvailableApkChecksums(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;[Ljava/security/cert/Certificate;Ljava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v5, "ApkChecksums"

    const-string/jumbo v6, "Preferred checksum calculation error"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/ApkChecksums;->processRequiredChecksums(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V

    return-void
.end method

.method public static getRequiredApkChecksums(Ljava/lang/String;Ljava/io/File;ILjava/util/Map;)V
    .locals 12

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p2, p3}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v2

    const-string v3, "ApkChecksums"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Lcom/android/server/pm/ApkChecksums$1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v4, v2}, Landroid/util/apk/VerityBuilder;->generateFsVerityRootHash(Ljava/lang/String;[BLandroid/util/apk/ByteBufferFactory;)[B

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v5, Landroid/content/pm/ApkChecksum;

    invoke-static {p1, v0}, Lcom/android/server/pm/ApkChecksums;->verityHashForFile(Ljava/io/File;[B)[B

    move-result-object v0

    invoke-direct {v5, p0, v1, v0}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {p3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Error calculating WHOLE_MERKLE_ROOT_4K_SHA256"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x2

    invoke-static {p3, p0, p1, p2, v0}, Lcom/android/server/pm/ApkChecksums;->calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V

    const/4 v2, 0x4

    invoke-static {p3, p0, p1, p2, v2}, Lcom/android/server/pm/ApkChecksums;->calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V

    const/16 v2, 0x8

    invoke-static {p3, p0, p1, p2, v2}, Lcom/android/server/pm/ApkChecksums;->calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V

    const/16 v2, 0x10

    invoke-static {p3, p0, p1, p2, v2}, Lcom/android/server/pm/ApkChecksums;->calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V

    const-string/jumbo v2, "V2/V3 signatures not found in "

    and-int/lit8 v5, p2, 0x20

    const/16 v6, 0x20

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    const/16 v8, 0x40

    and-int/2addr p2, v8

    if-eqz p2, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v7

    :goto_2
    if-nez v5, :cond_3

    if-nez p2, :cond_3

    goto/16 :goto_a

    :cond_3
    :try_start_1
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string/jumbo v10, "r"

    invoke-direct {v9, p1, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-static {v9}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v4
    :try_end_2
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_7

    :catch_1
    :try_start_3
    invoke-static {v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v4
    :try_end_3
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_2
    :goto_3
    if-nez v4, :cond_5

    :try_start_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/DigestException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_a

    :catch_3
    move-exception p0

    goto :goto_9

    :cond_5
    if-eqz v5, :cond_6

    if-eqz p2, :cond_6

    :try_start_6
    filled-new-array {v1, v0}, [I

    move-result-object p1

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_7

    filled-new-array {v1}, [I

    move-result-object p1

    goto :goto_4

    :cond_7
    filled-new-array {v0}, [I

    move-result-object p1

    :goto_4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-static {p1, p2, v4}, Landroid/util/apk/ApkSigningBlockUtils;->computeContentDigestsPer1MbChunk([ILjava/io/FileDescriptor;Landroid/util/apk/SignatureInfo;)[[B

    move-result-object p2

    array-length v2, p1

    :goto_5
    if-ge v7, v2, :cond_4

    aget v4, p1, v7

    const/4 v5, -0x1

    if-eq v4, v1, :cond_9

    if-eq v4, v0, :cond_8

    move v4, v5

    goto :goto_6

    :cond_8
    move v4, v8

    goto :goto_6

    :cond_9
    move v4, v6

    :goto_6
    if-eq v4, v5, :cond_a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v10, Landroid/content/pm/ApkChecksum;

    aget-object v11, p2, v7

    invoke-direct {v10, p0, v4, v11}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {p3, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :goto_7
    :try_start_7
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/security/DigestException; {:try_start_8 .. :try_end_8} :catch_3

    :goto_9
    const-string p1, "Error computing hash."

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    return-void
.end method

.method public static isRequired(IILjava/util/Map;)Z
    .locals 1

    and-int/2addr p1, p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static needToWait(Ljava/io/File;ILjava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x10

    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x20

    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x40

    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return v2

    :cond_1
    iget-object p1, p3, Lcom/android/server/pm/ApkChecksums$Injector;->mIncrementalManagerProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

    invoke-interface {p1}, Lcom/android/server/pm/ApkChecksums$Injector$Producer;->produce()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/incremental/IncrementalManager;

    const-string p2, "ApkChecksums"

    if-nez p1, :cond_2

    const-string p0, "IncrementalManager is missing."

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-virtual {p1, p0}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "IncrementalStorage is missing for a path on IncFs: "

    invoke-static {p1, p0, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    invoke-virtual {p1, p0}, Landroid/os/incremental/IncrementalStorage;->isFileFullyLoaded(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static processRequiredChecksums(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V
    .locals 15

    move/from16 v3, p2

    move-object/from16 v5, p4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v0, v0, p5

    const-wide/32 v6, 0x5265c00

    cmp-long v0, v0, v6

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, v1

    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v10, p0

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v1

    :goto_1
    const-string v13, "ApkChecksums"

    if-ge v12, v11, :cond_4

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    move-object/from16 v2, p1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v8, :cond_1

    if-eqz v3, :cond_3

    :cond_1
    :try_start_0
    invoke-static {v1, v3, v2, v5}, Lcom/android/server/pm/ApkChecksums;->needToWait(Ljava/io/File;ILjava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v5, Lcom/android/server/pm/ApkChecksums$Injector;->mHandlerProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

    invoke-interface {v0}, Lcom/android/server/pm/ApkChecksums$Injector$Producer;->produce()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/ApkChecksums$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v14, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    invoke-static {v0, v1, v3, v2}, Lcom/android/server/pm/ApkChecksums;->getRequiredApkChecksums(Ljava/lang/String;Ljava/io/File;ILjava/util/Map;)V

    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    const-string/jumbo v1, "Required checksum calculation error"

    invoke-static {v13, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, p4

    goto :goto_1

    :cond_4
    move-object/from16 v4, p3

    :try_start_1
    invoke-interface {v4, v9}, Landroid/content/pm/IOnChecksumsReadyListener;->onChecksumsReady(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-static {v13, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void
.end method

.method public static readChecksums(Ljava/io/File;)[Landroid/content/pm/Checksum;
    .locals 4

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    :try_start_2
    invoke-static {p0}, Landroid/content/pm/Checksum;->readFromStream(Ljava/io/DataInputStream;)Landroid/content/pm/Checksum;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/Checksum;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Checksum;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
.end method

.method public static verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;
    .locals 4

    if-eqz p1, :cond_4

    array-length v0, p1

    const v1, 0x8c00

    if-gt v0, v1, :cond_4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-static {v0, p0}, Lcom/android/server/pm/ApkChecksums;->writeChecksums(Ljava/io/OutputStream;[Landroid/content/pm/Checksum;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v0, Lsun/security/pkcs/PKCS7;

    invoke-direct {v0, p1}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length p1, p1

    if-eqz p1, :cond_3

    invoke-virtual {v0, p0}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length p1, p0

    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, v0}, Lsun/security/pkcs/SignerInfo;->getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/SignatureException;

    const-string/jumbo p1, "Verification passed, but certification chain is empty."

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/cert/Certificate;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/Certificate;

    return-object p0

    :cond_2
    new-instance p0, Ljava/security/SignatureException;

    const-string/jumbo p1, "Verification failed"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/security/SignatureException;

    const-string/jumbo p1, "Signature missing certificates"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_4
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "Invalid signature"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verityHashForFile(Ljava/io/File;[B)[B
    .locals 4

    const/16 v0, 0x100

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move p0, v1

    :goto_0
    const/16 p1, 0xd0

    if-ge p0, p1, :cond_0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-string/jumbo p0, "SHA256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "ApkChecksums"

    const-string v0, "Device does not support MessageDigest algorithm"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static writeChecksums(Ljava/io/OutputStream;[Landroid/content/pm/Checksum;)V
    .locals 3

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    invoke-static {v0, v2}, Landroid/content/pm/Checksum;->writeToStream(Ljava/io/DataOutputStream;Landroid/content/pm/Checksum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method
