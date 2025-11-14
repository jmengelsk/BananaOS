.class public final Lcom/android/server/pm/PackageManagerNative;
.super Landroid/content/pm/IPackageManagerNative$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/pm/IPackageManagerNative$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public final getInstallerForPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {p0, v0, p1}, Lcom/android/server/pm/Computer;->getInstallerPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    return-object v1

    :cond_19
    const-wide/16 v1, 0x0

    invoke-interface {p0, p1, v1, v2, v0}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_2b

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2b

    const-string/jumbo p0, "preload"

    return-object p0

    :cond_2b
    const-string p0, ""

    return-object p0
.end method

.method public final getLocationFlags(Ljava/lang/String;)I
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-interface {p0, p1, v1, v2, v0}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    const/4 v0, 0x2

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    or-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result p0

    if-eqz p0, :cond_2c

    const/4 v1, 0x4

    :cond_2c
    or-int p0, p1, v1

    return p0

    :cond_2f
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Couldn\'t get ApplicationInfo for package "

    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getModuleMetadataPackageName()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    iget-boolean v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageName:Ljava/lang/String;

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call to getVersion before metadata loaded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getNamesForUids([I)[Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_77

    :try_start_3
    array-length v1, p1

    if-nez v1, :cond_8

    goto/16 :goto_77

    :cond_8
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getNamesForUids([I)[Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_30

    if-eqz p0, :cond_16

    move-object v0, p0

    goto :goto_19

    :cond_16
    :try_start_16
    array-length v1, p1

    new-array v0, v1, [Ljava/lang/String;

    :goto_19
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_1c
    if-ltz v1, :cond_2f

    aget-object v2, v0, v1

    if-nez v2, :cond_2c

    const-string v2, ""

    aput-object v2, v0, v1
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_27

    goto :goto_2c

    :catchall_27
    move-exception v1

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_32

    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    :cond_2f
    return-object v0

    :catchall_30
    move-exception v1

    move-object p0, v0

    :goto_32
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "uids: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "PackageManager"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "names: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "results: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "throwing exception"

    invoke-static {v2, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v1

    :cond_77
    :goto_77
    return-object v0
.end method

.method public final getPackageUid(Ljava/lang/String;JI)I
    .registers 5

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    return p0
.end method

.method public final getStagedApexInfos()[Landroid/content/pm/StagedApexInfo;
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {p0}, Lcom/android/server/pm/StagingManager;->getStagedApexInfos()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/pm/StagedApexInfo;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/pm/StagedApexInfo;

    return-object p0
.end method

.method public final getTargetSdkVersionForPackage(Ljava/lang/String;)I
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_e

    return p0

    :cond_e
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Couldn\'t get targetSdkVersion for package "

    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getVersionCodeForPackage(Ljava/lang/String;)J
    .registers 5

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1, v0, v1, v2}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    return-wide p0

    :catch_1b
    :cond_1b
    return-wide v0
.end method

.method public final hasSha256SigningCertificate(Ljava/lang/String;[B)Z
    .registers 4

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p1, p2, v0}, Lcom/android/server/pm/Computer;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result p0

    return p0
.end method

.method public final hasSystemFeature(Ljava/lang/String;I)Z
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isAudioPlaybackCaptureAllowed([Ljava/lang/String;)[Z
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    array-length v1, p1

    new-array v2, v1, [Z

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_13
    if-ltz v1, :cond_2d

    aget-object v4, p1, v1

    const-wide/16 v5, 0x0

    invoke-interface {p0, v4, v5, v6, v0}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isAudioPlaybackCaptureAllowed()Z

    move-result v4

    if-eqz v4, :cond_27

    move v4, v3

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    :goto_28
    aput-boolean v4, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_2d
    return-object v2
.end method

.method public final isPackageDebuggable(Ljava/lang/String;)Z
    .registers 5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-interface {p0, p1, v1, v2, v0}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Couldn\'t get debug flag for package "

    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    .registers 5

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_c

    goto :goto_36

    :cond_c
    invoke-interface {p1}, Landroid/content/pm/IStagedApexObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2b

    :try_start_12
    invoke-interface {p1}, Landroid/content/pm/IStagedApexObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/StagingManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/StagingManager$1;-><init>(Lcom/android/server/pm/StagingManager;Landroid/content/pm/IStagedApexObserver;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1f} :catch_20

    goto :goto_2b

    :catch_20
    move-exception v0

    const-string/jumbo v1, "StagingManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    monitor-enter v0

    :try_start_2e
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    :goto_36
    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_37

    throw p0
.end method

.method public final unregisterStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    monitor-enter v0

    :try_start_9
    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mStagedApexObservers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    throw p0
.end method
