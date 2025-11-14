.class public abstract Lcom/android/server/pm/ApkChecksums;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/Certificate;

    return-void
.end method

.method public static buildDigestsPathForApk(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

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

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Code path is not an apk "

    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static calculateChecksumIfRequested(Ljava/util/Map;Ljava/lang/String;Ljava/io/File;II)V
    .registers 11

    and-int/2addr p3, p4

    if-eqz p3, :cond_b0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b0

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

    :try_start_22
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_77
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_22 .. :try_end_27} :catch_75

    :try_start_27
    new-array v0, v0, [B

    const/4 v3, 0x2

    if-eq p4, v3, :cond_57

    const/4 v3, 0x4

    if-eq p4, v3, :cond_53

    const/16 v3, 0x8

    if-eq p4, v3, :cond_4f

    const/16 v3, 0x10

    if-ne p4, v3, :cond_3b

    const-string/jumbo v3, "SHA512"

    goto :goto_5a

    :cond_3b
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid checksum type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    const-string/jumbo v3, "SHA256"

    goto :goto_5a

    :cond_53
    const-string/jumbo v3, "SHA1"

    goto :goto_5a

    :cond_57
    const-string/jumbo v3, "MD5"

    :goto_5a
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    :goto_5e
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6c

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_5e

    :catchall_6a
    move-exception v0

    goto :goto_79

    :cond_6c
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0
    :try_end_70
    .catchall {:try_start_27 .. :try_end_70} :catchall_6a

    :try_start_70
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_77
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_70 .. :try_end_73} :catch_75

    move-object v1, v0

    goto :goto_a2

    :catch_75
    move-exception p2

    goto :goto_82

    :catch_77
    move-exception v0

    goto :goto_88

    :goto_79
    :try_start_79
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7d

    goto :goto_81

    :catchall_7d
    move-exception v2

    :try_start_7e
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_81
    throw v0
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_82} :catch_77
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7e .. :try_end_82} :catch_75

    :goto_82
    const-string v0, "Device does not support MessageDigest algorithm"

    invoke-static {p3, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a2

    :goto_88
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

    :goto_a2
    if-eqz v1, :cond_b0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Landroid/content/pm/ApkChecksum;

    invoke-direct {p3, p1, p4, v1}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b0
    return-void
.end method

.method public static convertToSet([Ljava/security/cert/Certificate;)Ljava/util/Set;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1f

    aget-object v3, p0, v2

    new-instance v4, Landroid/content/pm/Signature;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/content/pm/Signature;-><init>([B)V

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1f
    return-object v0
.end method

.method public static getAvailableApkChecksums(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;[Ljava/security/cert/Certificate;Ljava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)V
    .registers 24

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_280

    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7, v2, v5}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v0

    const/4 v8, 0x0

    const-string v9, "ApkChecksums"

    if-eqz v0, :cond_6c

    invoke-static {v6}, Lcom/android/internal/security/VerityUtils;->hasFsverity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {v6}, Lcom/android/internal/security/VerityUtils;->getFsverityDigest(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_32

    new-instance v10, Landroid/content/pm/ApkChecksum;

    invoke-direct {v10, v1, v7, v0}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    goto :goto_5c

    :cond_32
    :try_start_32
    invoke-static {v6}, Landroid/util/apk/ApkSignatureSchemeV4Verifier;->extractCertificates(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;

    move-result-object v0

    iget-object v0, v0, Landroid/util/apk/ApkSignatureSchemeV4Verifier$VerifiedSigner;->contentDigests:Ljava/util/Map;

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_5b

    new-instance v10, Landroid/content/pm/ApkChecksum;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v0}, Lcom/android/server/pm/ApkChecksums;->verityHashForFile(Ljava/io/File;[B)[B

    move-result-object v0

    invoke-direct {v10, v1, v7, v0}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V
    :try_end_53
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_32 .. :try_end_53} :catch_5b
    .catch Ljava/security/SignatureException; {:try_start_32 .. :try_end_53} :catch_54
    .catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_53} :catch_54

    goto :goto_5c

    :catch_54
    move-exception v0

    const-string/jumbo v10, "V4 signature error"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_5b
    :cond_5b
    move-object v10, v8

    :goto_5c
    if-eqz v10, :cond_6c

    invoke-virtual {v10}, Landroid/content/pm/ApkChecksum;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v11, v5

    check-cast v11, Landroid/util/ArrayMap;

    invoke-virtual {v11, v0, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    const/16 v0, 0x20

    invoke-static {v0, v2, v5}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v10

    const/16 v11, 0x40

    const/4 v12, 0x0

    if-nez v10, :cond_7d

    invoke-static {v11, v2, v5}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v10

    if-eqz v10, :cond_f1

    :cond_7d
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v10

    const/4 v13, 0x2

    invoke-static {v10, v6, v13, v12}, Landroid/util/apk/ApkSignatureVerifier;->verifySignaturesInternal(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;IZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v10

    if-eqz v10, :cond_a0

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v10

    instance-of v10, v10, Landroid/util/apk/SignatureNotFoundException;

    if-nez v10, :cond_9e

    const-string/jumbo v10, "Signature verification error"

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v6

    invoke-static {v9, v10, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9e
    move-object v6, v8

    goto :goto_a8

    :cond_a0
    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;

    iget-object v6, v6, Landroid/util/apk/ApkSignatureVerifier$SigningDetailsWithDigests;->contentDigests:Ljava/util/Map;

    :goto_a8
    if-nez v6, :cond_ac

    move-object v10, v8

    goto :goto_e9

    :cond_ac
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    and-int/lit8 v14, v2, 0x20

    if-eqz v14, :cond_cd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    if-eqz v7, :cond_cd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Landroid/content/pm/ApkChecksum;

    invoke-direct {v15, v1, v0, v7}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v10, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_cd
    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_e9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_e9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/content/pm/ApkChecksum;

    invoke-direct {v7, v1, v11, v0}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v10, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e9
    :goto_e9
    if-eqz v10, :cond_f1

    move-object v0, v5

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    :cond_f1
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f9

    goto/16 :goto_280

    :cond_f9
    if-eqz v4, :cond_100

    array-length v0, v4

    if-nez v0, :cond_100

    goto/16 :goto_280

    :cond_100
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/ApkChecksums;->buildDigestsPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_114

    goto :goto_115

    :cond_114
    move-object v6, v8

    :goto_115
    if-nez v6, :cond_119

    goto/16 :goto_280

    :cond_119
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v7, ".signature"

    invoke-static {v0, v7}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12f

    goto :goto_130

    :cond_12f
    move-object v7, v8

    :goto_130
    :try_start_130
    invoke-static {v6}, Lcom/android/server/pm/ApkChecksums;->readChecksums(Ljava/io/File;)[Landroid/content/pm/Checksum;

    move-result-object v0

    if-eqz v7, :cond_172

    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v10

    invoke-static {v10}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/server/pm/ApkChecksums;->verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;

    move-result-object v10

    if-eqz v10, :cond_16b

    array-length v11, v10

    if-nez v11, :cond_148

    goto :goto_16b

    :cond_148
    array-length v11, v10

    new-array v11, v11, [Landroid/content/pm/Signature;

    array-length v13, v10

    move v14, v12

    :goto_14d
    if-ge v14, v13, :cond_169

    new-instance v15, Landroid/content/pm/Signature;

    aget-object v16, v10, v14

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v8

    invoke-direct {v15, v8}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v15, v11, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x0

    goto :goto_14d

    :catch_160
    move-exception v0

    goto/16 :goto_25f

    :catch_163
    move-exception v0

    goto/16 :goto_265

    :catch_166
    move-exception v0

    goto/16 :goto_27b

    :cond_169
    const/4 v8, 0x0

    goto :goto_193

    :cond_16b
    :goto_16b
    const-string v0, "Error validating signature"

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_280

    :cond_172
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/ApkChecksums$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    if-nez v8, :cond_183

    const-string v0, "Installer package not found."

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_280

    :cond_183
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v11

    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v8

    :goto_193
    if-eqz v11, :cond_259

    array-length v10, v11

    if-eqz v10, :cond_259

    aget-object v10, v11, v12

    if-nez v10, :cond_19e

    goto/16 :goto_259

    :cond_19e
    invoke-virtual {v10}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v10

    invoke-static {v4}, Lcom/android/server/pm/ApkChecksums;->convertToSet([Ljava/security/cert/Certificate;)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_1e8

    move-object v13, v4

    check-cast v13, Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1e8

    array-length v10, v11

    move v13, v12

    :goto_1b3
    if-ge v13, v10, :cond_1c4

    aget-object v14, v11, v13

    move-object v15, v4

    check-cast v15, Landroid/util/ArraySet;

    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1c1

    goto :goto_1c5

    :cond_1c1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1b3

    :cond_1c4
    const/4 v14, 0x0

    :goto_1c5
    if-nez v14, :cond_1e0

    if-nez v8, :cond_1ca

    goto :goto_1de

    :cond_1ca
    array-length v10, v8

    move v11, v12

    :goto_1cc
    if-ge v11, v10, :cond_1de

    aget-object v13, v8, v11

    move-object v14, v4

    check-cast v14, Landroid/util/ArraySet;

    invoke-virtual {v14, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1db

    move-object v8, v13

    goto :goto_1df

    :cond_1db
    add-int/lit8 v11, v11, 0x1

    goto :goto_1cc

    :cond_1de
    :goto_1de
    const/4 v8, 0x0

    :goto_1df
    move-object v14, v8

    :cond_1e0
    if-nez v14, :cond_1e4

    goto/16 :goto_280

    :cond_1e4
    invoke-virtual {v14}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v10

    :cond_1e8
    array-length v4, v0

    move v8, v12

    :goto_1ea
    if-ge v8, v4, :cond_234

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

    if-eqz v13, :cond_231

    invoke-virtual {v13}, Landroid/content/pm/ApkChecksum;->getValue()[B

    move-result-object v13

    invoke-virtual {v11}, Landroid/content/pm/Checksum;->getValue()[B

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    if-eqz v13, :cond_210

    goto :goto_231

    :cond_210
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

    :cond_231
    :goto_231
    add-int/lit8 v8, v8, 0x1

    goto :goto_1ea

    :cond_234
    array-length v4, v0

    :goto_235
    if-ge v12, v4, :cond_280

    aget-object v8, v0, v12

    invoke-virtual {v8}, Landroid/content/pm/Checksum;->getType()I

    move-result v11

    invoke-static {v11, v2, v5}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v11

    if-eqz v11, :cond_256

    invoke-virtual {v8}, Landroid/content/pm/Checksum;->getType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v13, Landroid/content/pm/ApkChecksum;

    invoke-direct {v13, v1, v8, v3, v10}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;Landroid/content/pm/Checksum;Ljava/lang/String;[B)V

    move-object v8, v5

    check-cast v8, Landroid/util/ArrayMap;

    invoke-virtual {v8, v11, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_256
    add-int/lit8 v12, v12, 0x1

    goto :goto_235

    :cond_259
    :goto_259
    const-string v0, "Can\'t obtain certificates."

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25e
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_25e} :catch_166
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_130 .. :try_end_25e} :catch_163
    .catch Ljava/security/SignatureException; {:try_start_130 .. :try_end_25e} :catch_163
    .catch Ljava/security/InvalidParameterException; {:try_start_130 .. :try_end_25e} :catch_163
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_130 .. :try_end_25e} :catch_160

    goto :goto_280

    :goto_25f
    const-string v1, "Error encoding trustedInstallers"

    invoke-static {v9, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_280

    :goto_265
    const-string v1, "Error validating digests. Invalid digests will be removed"

    invoke-static {v9, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_26a
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    if-eqz v7, :cond_280

    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_27a
    .catch Ljava/io/IOException; {:try_start_26a .. :try_end_27a} :catch_280

    goto :goto_280

    :goto_27b
    const-string v1, "Error reading .digests or .signature"

    invoke-static {v9, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_280
    :cond_280
    :goto_280
    return-void
.end method

.method public static getChecksums(Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;)V
    .registers 19

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

    :goto_12
    if-ge v4, v3, :cond_49

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

    :try_start_39
    invoke-static/range {v5 .. v11}, Lcom/android/server/pm/ApkChecksums;->getAvailableApkChecksums(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;[Ljava/security/cert/Certificate;Ljava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_46

    :catchall_3d
    move-exception v0

    const-string v5, "ApkChecksums"

    const-string/jumbo v6, "Preferred checksum calculation error"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_49
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
    .registers 16

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p2, p3}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v2

    const-string v3, "ApkChecksums"

    const/4 v4, 0x0

    if-eqz v2, :cond_2e

    :try_start_e
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
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_27} :catch_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_27} :catch_28
    .catch Ljava/security/DigestException; {:try_start_e .. :try_end_27} :catch_28

    goto :goto_2e

    :catch_28
    move-exception v0

    const-string v2, "Error calculating WHOLE_MERKLE_ROOT_4K_SHA256"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2e
    :goto_2e
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

    if-eqz v5, :cond_56

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    move v5, v1

    goto :goto_57

    :cond_56
    move v5, v7

    :goto_57
    const/16 v8, 0x40

    and-int/2addr p2, v8

    if-eqz p2, :cond_68

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_68

    move p2, v1

    goto :goto_69

    :cond_68
    move p2, v7

    :goto_69
    if-nez v5, :cond_6f

    if-nez p2, :cond_6f

    goto/16 :goto_e9

    :cond_6f
    :try_start_6f
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string/jumbo v10, "r"

    invoke-direct {v9, p1, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_77} :catch_9b
    .catch Ljava/security/DigestException; {:try_start_6f .. :try_end_77} :catch_9b

    :try_start_77
    invoke-static {v9}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v4
    :try_end_7b
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_77 .. :try_end_7b} :catch_7e
    .catchall {:try_start_77 .. :try_end_7b} :catchall_7c

    goto :goto_82

    :catchall_7c
    move-exception p0

    goto :goto_db

    :catch_7e
    :try_start_7e
    invoke-static {v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v4
    :try_end_82
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_7e .. :try_end_82} :catch_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_7c

    :catch_82
    :goto_82
    if-nez v4, :cond_9d

    :try_start_84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_84 .. :try_end_97} :catchall_7c

    :cond_97
    :try_start_97
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b
    .catch Ljava/security/DigestException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_e9

    :catch_9b
    move-exception p0

    goto :goto_e4

    :cond_9d
    if-eqz v5, :cond_a6

    if-eqz p2, :cond_a6

    :try_start_a1
    filled-new-array {v1, v0}, [I

    move-result-object p1

    goto :goto_b1

    :cond_a6
    if-eqz v5, :cond_ad

    filled-new-array {v1}, [I

    move-result-object p1

    goto :goto_b1

    :cond_ad
    filled-new-array {v0}, [I

    move-result-object p1

    :goto_b1
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-static {p1, p2, v4}, Landroid/util/apk/ApkSigningBlockUtils;->computeContentDigestsPer1MbChunk([ILjava/io/FileDescriptor;Landroid/util/apk/SignatureInfo;)[[B

    move-result-object p2

    array-length v2, p1

    :goto_ba
    if-ge v7, v2, :cond_97

    aget v4, p1, v7

    const/4 v5, -0x1

    if-eq v4, v1, :cond_c7

    if-eq v4, v0, :cond_c5

    move v4, v5

    goto :goto_c8

    :cond_c5
    move v4, v8

    goto :goto_c8

    :cond_c7
    move v4, v6

    :goto_c8
    if-eq v4, v5, :cond_d8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v10, Landroid/content/pm/ApkChecksum;

    aget-object v11, p2, v7

    invoke-direct {v10, p0, v4, v11}, Landroid/content/pm/ApkChecksum;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {p3, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d8
    .catchall {:try_start_a1 .. :try_end_d8} :catchall_7c

    :cond_d8
    add-int/lit8 v7, v7, 0x1

    goto :goto_ba

    :goto_db
    :try_start_db
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_de
    .catchall {:try_start_db .. :try_end_de} :catchall_df

    goto :goto_e3

    :catchall_df
    move-exception p1

    :try_start_e0
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e3
    throw p0
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e4} :catch_9b
    .catch Ljava/security/DigestException; {:try_start_e0 .. :try_end_e4} :catch_9b

    :goto_e4
    const-string p1, "Error computing hash."

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e9
    return-void
.end method

.method public static isRequired(IILjava/util/Map;)Z
    .registers 4

    and-int/2addr p1, p0

    const/4 v0, 0x0

    if-nez p1, :cond_5

    return v0

    :cond_5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    return v0

    :cond_10
    const/4 p0, 0x1

    return p0
.end method

.method public static needToWait(Ljava/io/File;ILjava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_37

    const/4 v1, 0x2

    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_37

    const/4 v1, 0x4

    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_37

    const/16 v1, 0x8

    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_37

    const/16 v1, 0x10

    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_37

    const/16 v1, 0x20

    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_37

    const/16 v1, 0x40

    invoke-static {v1, p1, p2}, Lcom/android/server/pm/ApkChecksums;->isRequired(IILjava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_37

    goto :goto_41

    :cond_37
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_42

    :goto_41
    return v2

    :cond_42
    iget-object p1, p3, Lcom/android/server/pm/ApkChecksums$Injector;->mIncrementalManagerProducer:Lcom/android/server/pm/ApkChecksums$Injector$Producer;

    invoke-interface {p1}, Lcom/android/server/pm/ApkChecksums$Injector$Producer;->produce()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/incremental/IncrementalManager;

    const-string p2, "ApkChecksums"

    if-nez p1, :cond_54

    const-string p0, "IncrementalManager is missing."

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_54
    invoke-virtual {p1, p0}, Landroid/os/incremental/IncrementalManager;->openStorage(Ljava/lang/String;)Landroid/os/incremental/IncrementalStorage;

    move-result-object p1

    if-nez p1, :cond_60

    const-string p1, "IncrementalStorage is missing for a path on IncFs: "

    invoke-static {p1, p0, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_60
    invoke-virtual {p1, p0}, Landroid/os/incremental/IncrementalStorage;->isFileFullyLoaded(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static processRequiredChecksums(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;J)V
    .registers 22

    move/from16 v3, p2

    move-object/from16 v5, p4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v0, v0, p5

    const-wide/32 v6, 0x5265c00

    cmp-long v0, v0, v6

    const/4 v1, 0x0

    if-ltz v0, :cond_15

    const/4 v0, 0x1

    move v8, v0

    goto :goto_16

    :cond_15
    move v8, v1

    :goto_16
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v10, p0

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v1

    :goto_23
    const-string v13, "ApkChecksums"

    if-ge v12, v11, :cond_82

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

    if-eqz v8, :cond_49

    if-eqz v3, :cond_6f

    :cond_49
    :try_start_49
    invoke-static {v1, v3, v2, v5}, Lcom/android/server/pm/ApkChecksums;->needToWait(Ljava/io/File;ILjava/util/Map;Lcom/android/server/pm/ApkChecksums$Injector;)Z

    move-result v4

    if-eqz v4, :cond_6c

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

    goto :goto_8d

    :catchall_6a
    move-exception v0

    goto :goto_77

    :cond_6c
    invoke-static {v0, v1, v3, v2}, Lcom/android/server/pm/ApkChecksums;->getRequiredApkChecksums(Ljava/lang/String;Ljava/io/File;ILjava/util/Map;)V

    :cond_6f
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_76
    .catchall {:try_start_49 .. :try_end_76} :catchall_6a

    goto :goto_7d

    :goto_77
    const-string/jumbo v1, "Required checksum calculation error"

    invoke-static {v13, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7d
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, p4

    goto :goto_23

    :cond_82
    move-object/from16 v4, p3

    :try_start_84
    invoke-interface {v4, v9}, Landroid/content/pm/IOnChecksumsReadyListener;->onChecksumsReady(Ljava/util/List;)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_8d

    :catch_88
    move-exception v0

    move-object p0, v0

    invoke-static {v13, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8d
    return-void
.end method

.method public static readChecksums(Ljava/io/File;)[Landroid/content/pm/Checksum;
    .registers 5

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_5
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_3c

    :try_start_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_1e

    const/4 v2, 0x0

    :goto_10
    const/16 v3, 0x64

    if-ge v2, v3, :cond_20

    :try_start_14
    invoke-static {p0}, Landroid/content/pm/Checksum;->readFromStream(Ljava/io/DataInputStream;)Landroid/content/pm/Checksum;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/io/EOFException; {:try_start_14 .. :try_end_1b} :catch_20
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1e

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :catchall_1e
    move-exception v1

    goto :goto_33

    :catch_20
    :cond_20
    :try_start_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/Checksum;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Checksum;
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_1e

    :try_start_2c
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3c

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :goto_33
    :try_start_33
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception p0

    :try_start_38
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3b
    throw v1
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    :try_start_3d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_45
    throw p0
.end method

.method public static verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;
    .registers 6

    if-eqz p1, :cond_78

    array-length v0, p1

    const v1, 0x8c00

    if-gt v0, v1, :cond_78

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_d
    invoke-static {v0, p0}, Lcom/android/server/pm/ApkChecksums;->writeChecksums(Ljava/io/OutputStream;[Landroid/content/pm/Checksum;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_6e

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v0, Lsun/security/pkcs/PKCS7;

    invoke-direct {v0, p1}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    invoke-virtual {v0}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    if-eqz p1, :cond_65

    array-length p1, p1

    if-eqz p1, :cond_65

    invoke-virtual {v0, p0}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object p0

    if-eqz p0, :cond_5c

    array-length p1, p0

    if-eqz p1, :cond_5c

    new-instance p1, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_36
    if-ge v2, v1, :cond_4f

    aget-object v3, p0, v2

    invoke-virtual {v3, v0}, Lsun/security/pkcs/SignerInfo;->getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_46

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_46
    new-instance p0, Ljava/security/SignatureException;

    const-string/jumbo p1, "Verification passed, but certification chain is empty."

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4f
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/cert/Certificate;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/Certificate;

    return-object p0

    :cond_5c
    new-instance p0, Ljava/security/SignatureException;

    const-string/jumbo p1, "Verification failed"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_65
    new-instance p0, Ljava/security/SignatureException;

    const-string/jumbo p1, "Signature missing certificates"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_6e
    move-exception p0

    :try_start_6f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_77

    :catchall_73
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_77
    throw p0

    :cond_78
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "Invalid signature"

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verityHashForFile(Ljava/io/File;[B)[B
    .registers 6

    const/16 v0, 0x100

    :try_start_2
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

    :goto_29
    const/16 p1, 0xd0

    if-ge p0, p1, :cond_33

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_29

    :cond_33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-string/jumbo p0, "SHA256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_44
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_44} :catch_45

    return-object p0

    :catch_45
    move-exception p0

    const-string p1, "ApkChecksums"

    const-string v0, "Device does not support MessageDigest algorithm"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static writeChecksums(Ljava/io/OutputStream;[Landroid/content/pm/Checksum;)V
    .registers 5

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_5
    array-length p0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, p0, :cond_13

    aget-object v2, p1, v1

    invoke-static {v0, v2}, Landroid/content/pm/Checksum;->writeToStream(Ljava/io/DataOutputStream;Landroid/content/pm/Checksum;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_11

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catchall_11
    move-exception p0

    goto :goto_17

    :cond_13
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void

    :goto_17
    :try_start_17
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f
    throw p0
.end method
