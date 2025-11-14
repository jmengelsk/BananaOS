.class public abstract Lcom/samsung/ucm/ucmservice/EFSProperties;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final SCP_TYPES:[Ljava/lang/String;

.field public static final STORAGE_TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string/jumbo v8, "SD2"

    const-string v9, "ETC"

    const-string/jumbo v0, "eSE"

    const-string/jumbo v1, "SIM"

    const-string/jumbo v2, "SD"

    const-string/jumbo v3, "eSE1"

    const-string/jumbo v4, "SIM1"

    const-string/jumbo v5, "SD1"

    const-string/jumbo v6, "eSE2"

    const-string/jumbo v7, "SIM2"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    const-string/jumbo v0, "SCP11b"

    const-string/jumbo v1, "SCPCustom"

    const-string/jumbo v2, "NONE"

    const-string/jumbo v3, "SCP11a"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public static clearAppletInfo()V
    .locals 5

    const-string/jumbo v0, "deleteAppletDeletionLccmScript"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "ucm_delete_applet_lccmscript"

    const-string v2, "/efs/sec_efs"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteFile(Ljava/io/File;)Z

    move-result v0

    const-string/jumbo v1, "deletePluginPackageNameFile"

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "ucm_applet_pluginpackagename"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteFile(Ljava/io/File;)Z

    move-result v1

    const-string/jumbo v3, "deletePluginSigHash"

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "ucm_applet_plugin_hash_of_signature"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteFile(Ljava/io/File;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "deleteLccmScript: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deletePluginPackageNameFileResult: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "deletePluginSigHashResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string/jumbo p0, "failed to delete the existing file"

    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static deleteODEConfig()Z
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string/jumbo v2, "odeConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "failed to delete the existing ODE config file"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static deleteWpcOdeSettings()Z
    .locals 3

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->deleteODEConfig()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string/jumbo v2, "ucm_wpc_dar"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "failed to delete the existing WPC ODE flag"

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .locals 16

    const-string/jumbo v0, "read side mismatched, lenDefaultLanguage : "

    const-string/jumbo v1, "read side mismatched, lenPluginSignatureHash : "

    const-string/jumbo v2, "read side mismatched, lenScpParamLen : "

    const-string/jumbo v3, "read side mismatched, lenConfiguratorDigestLen : "

    const-string/jumbo v4, "read side mismatched, lenConfiguratorPkgLen : "

    const-string/jumbo v5, "read side mismatched, lenCertLocation : "

    const-string/jumbo v6, "read side mismatched, lenCertAlias : "

    const-string/jumbo v7, "read side mismatched, lengthCsName : "

    const-string/jumbo v8, "read side mismatched, lengthAID : "

    const-string/jumbo v9, "load ODE config"

    invoke-static {v9}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    const-string v10, "/efs/sec_efs"

    const-string/jumbo v11, "odeConfig"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v0, "ODE config file does not exist"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V

    return-object v0

    :cond_0
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    invoke-direct {v9}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V

    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v11

    iput v11, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v12, ", readByteSize : "

    const-string v13, "EFSProperties"

    const/4 v14, 0x0

    if-eqz v11, :cond_1

    :try_start_2
    new-array v15, v11, [B

    iput-object v15, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    invoke-virtual {v10, v15, v14, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v15

    if-eq v15, v11, :cond_1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_2

    :cond_1
    :goto_0
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v8

    iput v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v8

    if-eqz v8, :cond_2

    new-array v11, v8, [B

    iput-object v11, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v14, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v11

    if-eq v11, v8, :cond_2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v7

    iput v7, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v7

    iput v7, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v7

    if-eqz v7, :cond_3

    new-array v8, v7, [B

    iput-object v8, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    const/4 v14, 0x0

    invoke-virtual {v10, v8, v14, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    if-eq v8, v7, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v6

    if-eqz v6, :cond_4

    new-array v7, v6, [B

    iput-object v7, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    const/4 v14, 0x0

    invoke-virtual {v10, v7, v14, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    if-eq v7, v6, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v5

    if-eqz v5, :cond_5

    new-array v6, v5, [B

    iput-object v6, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    const/4 v14, 0x0

    invoke-virtual {v10, v6, v14, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-eq v6, v5, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v4

    if-eqz v4, :cond_6

    new-array v5, v4, [B

    iput-object v5, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    const/4 v14, 0x0

    invoke-virtual {v10, v5, v14, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    if-eq v5, v4, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v3, 0x2

    new-array v4, v3, [B

    const/4 v14, 0x0

    invoke-virtual {v10, v4, v14, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    if-lt v5, v3, :cond_c

    aget-byte v3, v4, v14

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    if-eqz v3, :cond_7

    new-array v4, v3, [B

    iput-object v4, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    const/4 v14, 0x0

    invoke-virtual {v10, v4, v14, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-eq v4, v3, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v2

    if-lez v2, :cond_8

    new-array v3, v2, [B

    iput-object v3, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    const/4 v14, 0x0

    invoke-virtual {v10, v3, v14, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-eq v3, v2, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    iput v5, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    goto :goto_1

    :cond_9
    iput v1, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    if-gt v1, v5, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v1

    if-lez v1, :cond_b

    new-array v2, v1, [B

    iput-object v2, v9, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    const/4 v14, 0x0

    invoke-virtual {v10, v2, v14, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    if-eq v2, v1, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    :goto_1
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v9

    :cond_c
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>()V

    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EFSProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static saveKeyguardConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;)Z
    .locals 4

    const-string/jumbo v0, "save Keyguard config"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string/jumbo v2, "keyguardConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo p0, "failed to delete the existing Keyguard ODE config file"

    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->csName:[B

    array-length v1, v0

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v3, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->AID:[B

    if-eqz v0, :cond_1

    :try_start_2
    array-length v1, v0

    if-lez v1, :cond_1

    array-length v1, v0

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v1, v3

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v1, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write(I)V

    :goto_0
    iget v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->storageType:I

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write(I)V

    iget v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->enabledSCP:I

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write(I)V

    iget v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMinLength:I

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write(I)V

    iget v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pinMaxLength:I

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write(I)V

    iget v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMinLength:I

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write(I)V

    iget p0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$KeyguardProperties;->pukMaxLength:I

    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p0, 0x1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    return p0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    goto :goto_1

    :catch_4
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_4
    const-string/jumbo v0, "saveKeyguardConfig : Exception"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :goto_2
    :try_start_6
    const-string/jumbo v0, "saveKeyguardConfig : IOException"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_2
    :goto_3
    return v2

    :goto_4
    if-eqz v1, :cond_3

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_5
    throw p0
.end method

.method public static saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "save ODE config"

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/sec_efs"

    const-string/jumbo v4, "odeConfig"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo p0, "failed to delete the existing ODE config file"

    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    if-eqz v3, :cond_1

    array-length v5, v3

    if-lez v5, :cond_1

    array-length v3, v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v3, v4

    goto/16 :goto_8

    :catch_1
    move-exception p0

    move-object v3, v4

    goto/16 :goto_a

    :cond_1
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write(I)V

    :goto_0
    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    if-eqz v3, :cond_2

    array-length v5, v3

    if-lez v5, :cond_2

    array-length v3, v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write(I)V

    :goto_1
    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    if-eqz v3, :cond_3

    array-length v5, v3

    if-lez v5, :cond_3

    array-length v3, v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write(I)V

    :goto_2
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    if-eqz v3, :cond_4

    array-length v5, v3

    if-lez v5, :cond_4

    array-length v3, v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write(I)V

    :goto_3
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    if-eqz v3, :cond_5

    array-length v5, v3

    if-lez v5, :cond_5

    array-length v3, v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_4

    :cond_5
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write(I)V

    :goto_4
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    if-eqz v3, :cond_6

    array-length v5, v3

    if-lez v5, :cond_6

    array-length v3, v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_5

    :cond_6
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write(I)V

    :goto_5
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    if-eqz v3, :cond_7

    array-length v5, v3

    if-lez v5, :cond_7

    array-length v5, v3

    const v6, 0xff00

    and-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    array-length v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v6, 0x2

    new-array v6, v6, [B

    aput-byte v5, v6, v1

    aput-byte v3, v6, v0

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_6

    :cond_7
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write(I)V

    :goto_6
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    if-eqz v3, :cond_8

    array-length v5, v3

    if-lez v5, :cond_8

    array-length v3, v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_7

    :cond_8
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write(I)V

    :goto_7
    iget v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    if-eqz v3, :cond_9

    array-length v5, v3

    if-lez v5, :cond_9

    array-length v3, v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write(I)V

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    invoke-virtual {v4, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :catch_2
    move-exception p0

    goto :goto_8

    :catch_3
    move-exception p0

    goto :goto_a

    :goto_8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_9
    move v0, v1

    move-object v4, v3

    goto :goto_b

    :goto_a
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_9

    :cond_9
    :goto_b
    if-eqz v4, :cond_a

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :cond_a
    :goto_c
    move v1, v0

    :goto_d
    return v1
.end method
