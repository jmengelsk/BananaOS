.class public final Lcom/samsung/android/authnrservice/service/SemAuthnrService;
.super Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final deleteFile(Ljava/lang/String;)Z
    .registers 4

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "df denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b
    invoke-static {}, Lcom/samsung/android/authnrservice/service/FileOperation;->getInstance()Lcom/samsung/android/authnrservice/service/FileOperation;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/authnrservice/service/FileOperation;->deleteFile(Ljava/lang/String;)Z

    move-result p0
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_13} :catch_14

    return p0

    :catch_14
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "deleteFile failed : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SAS"

    invoke-static {p1, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getDrkKeyHandle()[B
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "gdkh denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b
    invoke-static {}, Lcom/samsung/android/authnrservice/service/DrkOperation;->getInstance()Lcom/samsung/android/authnrservice/service/DrkOperation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/authnrservice/service/DrkOperation;->getDrkKeyHandle()[B

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getDrkKeyHandle failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "SAS"

    invoke-static {v0, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public final getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "gf denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b
    invoke-static {}, Lcom/samsung/android/authnrservice/service/FileOperation;->getInstance()Lcom/samsung/android/authnrservice/service/FileOperation;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/authnrservice/service/FileOperation;->verifyPath(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_23

    const-string p0, "FO"

    const-string/jumbo p1, "get file fail"

    invoke-static {p0, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_23
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "/data/.fido/"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/samsung/android/authnrservice/service/FileOperation;->getFilesRec(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_35} :catch_36

    return-object p0

    :catch_36
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "getFiles failed : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SAS"

    invoke-static {p1, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "gmfp denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b
    invoke-static {}, Lcom/samsung/android/authnrservice/service/FileOperation;->getInstance()Lcom/samsung/android/authnrservice/service/FileOperation;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/authnrservice/service/FileOperation;->getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "getMatchedFilePaths failed : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SAS"

    invoke-static {p1, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final getVersion()I
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "gv denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "version :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x102

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "SASvc_SAS"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final getWrappedObject([B)[B
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v2, "gwo denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->getInstance(Landroid/content/Context;)Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->getWrappedObject([B)[B

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "getWrappedObject failed : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SAS"

    invoke-static {p1, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public final initialize(Landroid/os/ParcelFileDescriptor;JJ)Z
    .registers 17

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "i denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;->getInstance()Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "afd close fail"

    const/4 v2, 0x0

    const-string v3, "AAO"

    if-nez p1, :cond_21

    const-string/jumbo p0, "parcelFileDescriptor is null"

    invoke-static {v3, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_21
    const/4 v4, 0x0

    :try_start_22
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    new-instance v5, Landroid/content/res/AssetFileDescriptor;

    move-wide v9, p4

    invoke-static {v0, p2, p3, v9, v10}, Lcom/samsung/android/authnrservice/service/FileUtil;->openFile(Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-direct/range {v5 .. v10}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_33} :catch_53
    .catchall {:try_start_22 .. :try_end_33} :catchall_50

    :try_start_33
    iget-object p1, p0, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;->manager:Lcom/samsung/android/authenticator/AuthenticatorManager;

    sget-object v0, Lcom/samsung/android/authenticator/TrustedAppAssetType;->PASS_AUTHENTICATOR:Lcom/samsung/android/authenticator/TrustedAppAssetType;

    invoke-virtual {p1, v0, v5}, Lcom/samsung/android/authenticator/AuthenticatorManager;->load(Lcom/samsung/android/authenticator/TrustedAppAssetType;Landroid/content/res/AssetFileDescriptor;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;->taID:I
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3d} :catch_4c
    .catchall {:try_start_33 .. :try_end_3d} :catchall_48

    if-ltz p1, :cond_40

    const/4 v2, 0x1

    :cond_40
    :try_start_40
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    return v2

    :catch_44
    invoke-static {v3, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    :catchall_48
    move-exception v0

    move-object p0, v0

    move-object v4, v5

    goto :goto_5e

    :catch_4c
    move-exception v0

    move-object p0, v0

    move-object v4, v5

    goto :goto_55

    :catchall_50
    move-exception v0

    move-object p0, v0

    goto :goto_5e

    :catch_53
    move-exception v0

    move-object p0, v0

    :goto_55
    :try_start_55
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_50

    if-eqz v4, :cond_5d

    :try_start_5a
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_44

    :cond_5d
    :goto_5d
    return v2

    :goto_5e
    if-eqz v4, :cond_67

    :try_start_60
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_67

    :catch_64
    invoke-static {v3, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    :goto_67
    throw p0
.end method

.method public final initializeDrk()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v2, "id denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b
    invoke-static {}, Lcom/samsung/android/authnrservice/service/DrkOperation;->getInstance()Lcom/samsung/android/authnrservice/service/DrkOperation;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/samsung/android/authnrservice/service/DrkOperation;->initialize(Landroid/content/Context;)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "initializeDrk failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "SAS"

    invoke-static {v0, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final initializePreloadedTa(I)Z
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v0, "ipt denied"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "SAS"

    const-string/jumbo p1, "initializePreloadedTa not supported"

    invoke-static {p0, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final initializeWithPreloadedTa()Z
    .registers 5

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "iwpt denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_c
    invoke-static {}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->getInstance()Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    move-result-object v0

    monitor-enter v0
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_11} :catch_23

    :try_start_11
    iget-object v1, v0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->manager:Lcom/samsung/android/authenticator/AuthenticatorManager;

    invoke-virtual {v1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->load()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->taID:I
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_20

    if-ltz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    move v1, p0

    :goto_1e
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_1f} :catch_23

    return v1

    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    throw v1
    :try_end_23
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_23} :catch_23

    :catch_23
    move-exception v0

    const-string/jumbo v1, "SAS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "p initialize failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final process([B)[B
    .registers 5

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "p denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;->getInstance()Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const-string v1, "AAO"

    if-eqz p1, :cond_38

    array-length v2, p1

    if-nez v2, :cond_1b

    goto :goto_38

    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;->manager:Lcom/samsung/android/authenticator/AuthenticatorManager;

    iget p0, p0, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;->taID:I

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/authenticator/AuthenticatorManager;->execute(I[B)[B

    move-result-object p0

    if-eqz p0, :cond_2a

    array-length p1, p0

    if-nez p1, :cond_29

    goto :goto_2a

    :cond_29
    return-object p0

    :cond_2a
    :goto_2a
    const-string/jumbo p0, "ta result is null"

    invoke-static {v1, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_30} :catch_31
    .catch Ljava/security/InvalidParameterException; {:try_start_1b .. :try_end_30} :catch_31
    .catch Landroid/os/DeadSystemRuntimeException; {:try_start_1b .. :try_end_30} :catch_31

    return-object v0

    :catch_31
    const-string/jumbo p0, "process : exception"

    invoke-static {v1, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_38
    :goto_38
    const-string/jumbo p0, "input error"

    invoke-static {v1, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final processPreloadedTa(I[B)[B
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo p2, "ppt denied"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "SAS"

    const-string/jumbo p1, "processPreloadedTa not supported"

    invoke-static {p0, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public final processWithPreloadedTa([BLjava/lang/String;)[B
    .registers 5

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "pwpt denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b
    invoke-static {}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->getInstance()Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->process(Ljava/lang/String;[B)[B

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "p process failed : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SAS"

    invoke-static {p1, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public final readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "rf denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b
    invoke-static {}, Lcom/samsung/android/authnrservice/service/FileOperation;->getInstance()Lcom/samsung/android/authnrservice/service/FileOperation;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/authnrservice/service/FileOperation;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "readFile failed : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SAS"

    invoke-static {p1, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public final setChallenge([B)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v2, "sc denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->getInstance(Landroid/content/Context;)Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->setChallenge([B)Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setChallenge failed : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SAS"

    invoke-static {p1, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final terminate()Z
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "t denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;->getInstance()Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;

    move-result-object p0

    iget v0, p0, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;->taID:I

    if-gez v0, :cond_1d

    const-string p0, "AAO"

    const-string/jumbo v0, "session is closed"

    invoke-static {p0, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1d
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;->manager:Lcom/samsung/android/authenticator/AuthenticatorManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/authenticator/AuthenticatorManager;->unload(I)Z

    move-result p0

    return p0
.end method

.method public final terminateDrk()Z
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "td denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b
    invoke-static {}, Lcom/samsung/android/authnrservice/service/DrkOperation;->getInstance()Lcom/samsung/android/authnrservice/service/DrkOperation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/authnrservice/service/DrkOperation;->terminate()Z

    move-result p0
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_13} :catch_14

    return p0

    :catch_14
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "terminateDrk failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "SAS"

    invoke-static {v0, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final terminatePreloadedTa(I)Z
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v0, "tpt denied"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "SAS"

    const-string/jumbo p1, "terminatePreloadedTa not supported"

    invoke-static {p0, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final terminateWithPreloadedTa()Z
    .registers 4

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "twpt denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b
    invoke-static {}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->getInstance()Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    move-result-object p0

    monitor-enter p0
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_10} :catch_2c

    :try_start_10
    iget v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->taID:I

    if-gez v0, :cond_22

    const-string/jumbo v0, "PAO"

    const-string/jumbo v1, "session is closed"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_20

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_1e} :catch_2c

    const/4 p0, 0x1

    return p0

    :catchall_20
    move-exception v0

    goto :goto_2a

    :cond_22
    :try_start_22
    iget-object v1, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->manager:Lcom/samsung/android/authenticator/AuthenticatorManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/authenticator/AuthenticatorManager;->unload(I)Z

    move-result v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_20

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_29} :catch_2c

    return v0

    :goto_2a
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_20

    :try_start_2b
    throw v0
    :try_end_2c
    .catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception p0

    const-string/jumbo v0, "SAS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "p terminate failed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final writeFile([BLjava/lang/String;)Z
    .registers 5

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "wf denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b
    invoke-static {}, Lcom/samsung/android/authnrservice/service/FileOperation;->getInstance()Lcom/samsung/android/authnrservice/service/FileOperation;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/authnrservice/service/FileOperation;->writeFile([BLjava/lang/String;)Z

    move-result p0
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_13} :catch_14

    return p0

    :catch_14
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "writeFile failed : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SAS"

    invoke-static {p1, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
