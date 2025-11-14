.class public final Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mConfigAppletRequestIds:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$1;

.field public mIsLccmScriptRunning:Z

.field public mLccmRetryCount:I

.field public final mOnLccmConnection:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;

.field public final mPm:Landroid/content/pm/IPackageManager;

.field public final mSecurityHelper:Lcom/samsung/ucm/ucmservice/security/UcmSecurityHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/samsung/ucm/ucmservice/security/UcmSecurityHelper;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mIsLccmScriptRunning:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mConfigAppletRequestIds:Ljava/util/List;

    new-instance v0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;

    invoke-direct {v0, p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;-><init>(Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mOnLccmConnection:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mPm:Landroid/content/pm/IPackageManager;

    iput-object p3, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mSecurityHelper:Lcom/samsung/ucm/ucmservice/security/UcmSecurityHelper;

    const-string/jumbo p1, "UcmServiceAppletHelperThread"

    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p1

    new-instance p2, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$1;-><init>(Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mHandler:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$1;

    return-void
.end method

.method public static getSignatureHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "getSignatureHash start: "

    const-string v1, ""

    const-string/jumbo v2, "UcmServiceAppletHelper"

    if-nez p0, :cond_11

    const-string/jumbo p0, "getSignatureHash pluginPkgInfo is null"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_11
    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SHA-512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    const/4 v3, 0x0

    aget-object p0, p0, v3

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_41} :catch_42

    return-object p0

    :catch_42
    move-exception p0

    const-string/jumbo v0, "getSignatureHash exception: "

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method


# virtual methods
.method public final declared-synchronized checkToRunLccmScript()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mSecurityHelper:Lcom/samsung/ucm/ucmservice/security/UcmSecurityHelper;

    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/security/UcmSecurityHelper;->isSystemCaller()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mSecurityHelper:Lcom/samsung/ucm/ucmservice/security/UcmSecurityHelper;

    const-string/jumbo v1, "runLccmScript"

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/security/UcmSecurityHelper;->checkCallerPermissionFor(Ljava/lang/String;)V

    goto :goto_14

    :catchall_12
    move-exception v0

    goto :goto_49

    :cond_14
    :goto_14
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mIsLccmScriptRunning:Z

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->isAppletPluginExist()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-static {}, Lcom/samsung/ucm/ucmservice/UcmServiceODE;->getOdeStatus()I

    move-result v0

    if-lez v0, :cond_25

    goto :goto_3e

    :cond_25
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs"

    const-string/jumbo v2, "ucm_delete_applet_lccmscript"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_3e

    :cond_36
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mLccmRetryCount:I

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->runLccmScript()V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_12

    monitor-exit p0

    return-void

    :cond_3e
    :goto_3e
    :try_start_3e
    const-string/jumbo v0, "UcmServiceAppletHelper"

    const-string/jumbo v1, "checkToRunLccmScript. skip"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_12

    monitor-exit p0

    return-void

    :goto_49
    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_12

    throw v0
.end method

.method public final getPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 5

    :try_start_0
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mPm:Landroid/content/pm/IPackageManager;

    const-wide/32 v0, 0x8000000

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    const-string/jumbo p0, "UcmServiceAppletHelper"

    const-string/jumbo p1, "application is not installed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAppletPluginExist()Z
    .registers 11

    const-string/jumbo v0, "ucm_applet_plugin_hash_of_signature"

    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string/jumbo v3, "ucm_applet_pluginpackagename"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_105

    new-instance v1, Ljava/io/File;

    const-string/jumbo v5, "ucm_delete_applet_lccmscript"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->clearAppletInfo()V

    return v4

    :cond_26
    const-string v1, ""

    const-string/jumbo v5, "getByteArray read: "

    const-string/jumbo v6, "getStoredPluginUid"

    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    :try_start_31
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_40} :catch_76

    :try_start_40
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v3, v7

    new-array v7, v3, [B

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v4, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v7, v4, v3, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_66
    .catchall {:try_start_40 .. :try_end_66} :catchall_6c

    :try_start_66
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_7b

    :catch_6a
    move-exception v3

    goto :goto_78

    :catchall_6c
    move-exception v3

    :try_start_6d
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_75

    :catchall_71
    move-exception v6

    :try_start_72
    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_75
    throw v3
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_76} :catch_76

    :catch_76
    move-exception v3

    move-object v8, v1

    :goto_78
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7b
    const-string/jumbo v3, "isPluginHashMatched, stored packagename: "

    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "UcmServiceAppletHelper"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->isOrganizationOwnedProfile(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a3

    sget v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->$r8$clinit:I

    sget-object v3, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getOrganizationOwnedProfileUserId()I

    move-result v3

    invoke-virtual {p0, v3, v8}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->getPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_a7

    invoke-virtual {p0, v4, v8}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->getPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    goto :goto_a7

    :cond_a3
    invoke-virtual {p0, v4, v8}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->getPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    :cond_a7
    :goto_a7
    if-eqz v3, :cond_105

    const-string/jumbo p0, "getStoredPluginSigHash"

    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    :try_start_af
    new-instance p0, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_be} :catch_f5

    :try_start_be
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v0, v6

    new-array v2, v0, [B

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v4, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v4, v0, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_e4
    .catchall {:try_start_be .. :try_end_e4} :catchall_eb

    :try_start_e4
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e7} :catch_e8

    goto :goto_fa

    :catch_e8
    move-exception p0

    move-object v1, v5

    goto :goto_f6

    :catchall_eb
    move-exception v0

    :try_start_ec
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_f0

    goto :goto_f4

    :catchall_f0
    move-exception p0

    :try_start_f1
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f4
    throw v0
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f5} :catch_f5

    :catch_f5
    move-exception p0

    :goto_f6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v1

    :goto_fa
    invoke-static {v3}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->getSignatureHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_105

    const/4 v4, 0x1

    :cond_105
    return v4
.end method

.method public final retryRunLccmAfterSleep()V
    .registers 7

    iget v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mLccmRetryCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mLccmRetryCount:I

    const/16 v2, 0x1e

    const-string/jumbo v3, "UcmServiceAppletHelper"

    if-lt v0, v2, :cond_14

    const-string/jumbo p0, "retryRunLccmAfterSleep. stop retry"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1a

    const-wide/16 v4, 0x3e8

    goto :goto_23

    :cond_1a
    const/16 v2, 0xa

    if-ge v0, v2, :cond_21

    const-wide/16 v4, 0x1388

    goto :goto_23

    :cond_21
    const-wide/16 v4, 0x2710

    :goto_23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "retryRunLccmAfterSleep. retry ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mLccmRetryCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] after ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] ms"

    invoke-static {v0, v2, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mHandler:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$1;

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final runLccmScript()V
    .registers 8

    const-string/jumbo v0, "UcmServiceAppletHelper"

    const-string/jumbo v1, "bindCcmService() isConnected : "

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mIsLccmScriptRunning:Z

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.skms.android.agent.CcmService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.skms.android.agent"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_19
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mOnLccmConnection:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;

    invoke-virtual {v5, v3, v6, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_30} :catch_31

    goto :goto_3d

    :catch_31
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bindCcmService() exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3d
    if-nez v4, :cond_42

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->retryRunLccmAfterSleep()V

    :cond_42
    return-void
.end method
