.class public final Lcom/android/server/pm/AppDataHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object p0, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mArtManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/dex/ArtManagerService;

    return-void
.end method

.method public static assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-interface {p0, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    const-string/jumbo v0, "Package "

    if-eqz p0, :cond_63

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_34

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_34

    :cond_24
    const-string p0, " not installed for user "

    const-string p1, " or was deleted without DELETE_KEEP_DATA"

    invoke-static {p3, v0, p2, p0, p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/16 p2, -0x9

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_34
    :goto_34
    invoke-static {p0}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result p0

    if-eqz p0, :cond_3b

    return-void

    :cond_3b
    const-string p0, " shouldn\'t have storage"

    invoke-static {v0, p2, p0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/16 p2, -0xa

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_49
    const-string p3, " found on unknown volume "

    const-string v1, "; expected volume "

    invoke-static {v0, p2, p3, p1, v1}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/4 p2, -0x8

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_63
    const-string p0, " is unknown"

    invoke-static {v0, p2, p0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/4 p2, -0x7

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public static clearAppProfilesLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 3

    if-nez p0, :cond_11

    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "Package was null!"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_11
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/AppDataHelper;->destroyAppProfilesLIF(Ljava/lang/String;)V

    return-void
.end method

.method public static destroyAppProfilesLIF(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/server/pm/DexOptHelper;->sArtManagerLocalIsInitialized:Z

    if-nez v0, :cond_5

    goto :goto_23

    :cond_5
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v0

    :try_start_d
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/android/server/art/ArtManagerLocal;->clearAppProfiles(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_14} :catch_17
    .catchall {:try_start_d .. :try_end_14} :catchall_15

    goto :goto_1e

    :catchall_15
    move-exception p0

    goto :goto_24

    :catch_17
    move-exception p0

    :try_start_18
    const-string/jumbo v1, "PackageManager"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_15

    :goto_1e
    if-eqz v0, :cond_23

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    :cond_23
    :goto_23
    return-void

    :goto_24
    if-eqz v0, :cond_2e

    :try_start_26
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2e
    :goto_2e
    throw p0
.end method

.method public static shouldHaveAppStorage(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 3

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_26

    :cond_7
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager$Property;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v0

    if-nez v0, :cond_28

    :cond_20
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p0

    if-ltz p0, :cond_28

    :goto_26
    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .registers 14

    if-nez p1, :cond_3

    goto :goto_53

    :cond_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object p2

    array-length v8, p2

    const/4 v0, 0x0

    move v9, v0

    :goto_1c
    if-ge v9, v8, :cond_4a

    aget v3, p2, v9

    if-eqz v7, :cond_2c

    invoke-interface {v7, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v4

    :goto_2a
    move-wide v5, v4

    goto :goto_2f

    :cond_2c
    const-wide/16 v4, 0x0

    goto :goto_2a

    :goto_2f
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_31
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2f .. :try_end_31} :catch_39

    move v4, p3

    :try_start_32
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/Installer;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_35
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_46

    :catch_36
    move-exception v0

    :goto_37
    move-object p3, v0

    goto :goto_3c

    :catch_39
    move-exception v0

    move v4, p3

    goto :goto_37

    :goto_3c
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "PackageManager"

    invoke-static {v0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    add-int/lit8 v9, v9, 0x1

    move p3, v4

    goto :goto_1c

    :cond_4a
    move v4, p3

    const/high16 p0, 0x20000

    and-int/2addr p0, v4

    if-nez p0, :cond_53

    invoke-static {p1}, Lcom/android/server/pm/AppDataHelper;->clearAppProfilesLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    :cond_53
    :goto_53
    return-void
.end method

.method public final clearKeystoreData(II)V
    .registers 7

    if-gez p2, :cond_3

    goto :goto_36

    :cond_3
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    const-string/jumbo v2, "PackageManager"

    if-ne v0, v1, :cond_15

    const-string/jumbo p0, "skip to clear keystore for SYSTEM_UID"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    const/16 v0, 0x1482

    if-eq p2, v0, :cond_37

    const/16 v0, 0x4e2

    if-ne p2, v0, :cond_1e

    goto :goto_37

    :cond_1e
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_27
    if-ge v1, p1, :cond_36

    aget v2, p0, v1

    invoke-static {v2, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_36
    :goto_36
    return-void

    :cond_37
    :goto_37
    const-string/jumbo p0, "skip to clear keystore for knox app with "

    invoke-static {p2, p0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final destroyAppDataLeafLIF(IILjava/lang/String;Ljava/lang/String;)V
    .registers 23

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v5, p3

    iget-object v0, v1, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    iget-object v0, v1, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    move v14, v13

    :goto_19
    if-ge v14, v12, :cond_105

    aget v6, v11, v14

    if-eqz v10, :cond_29

    invoke-interface {v10, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v3

    :goto_27
    move-wide v8, v3

    goto :goto_2c

    :cond_29
    const-wide/16 v3, 0x0

    goto :goto_27

    :goto_2c
    :try_start_2c
    iget-object v3, v1, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    move/from16 v7, p2

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_35
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2c .. :try_end_35} :catch_36

    goto :goto_41

    :catch_36
    move-exception v0

    const-string/jumbo v3, "PackageManager"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    iget-object v0, v1, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    const/4 v4, 0x0

    const/4 v6, -0x1

    if-ne v2, v6, :cond_67

    iget-object v7, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    iget-object v8, v7, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v8

    :try_start_4e
    iget-object v7, v7, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5a

    const/4 v7, 0x1

    goto :goto_5b

    :cond_5a
    move v7, v13

    :goto_5b
    monitor-exit v8
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_64

    if-eqz v7, :cond_d0

    iget-object v0, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    goto :goto_d0

    :catchall_64
    move-exception v0

    :try_start_65
    monitor-exit v8
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v0

    :cond_67
    iget-object v7, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    iget-object v8, v7, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v8

    :try_start_6c
    iget-object v9, v7, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    if-nez v9, :cond_7f

    monitor-exit v8

    move/from16 v16, v13

    goto :goto_c9

    :catchall_7c
    move-exception v0

    goto/16 :goto_103

    :cond_7f
    iget-object v15, v9, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    check-cast v15, Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move/from16 v16, v13

    :cond_8d
    :goto_8d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_ab

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    iget v3, v3, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    if-ne v3, v2, :cond_8d

    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    const/16 v16, 0x1

    goto :goto_8d

    :cond_ab
    iget-object v3, v9, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c8

    iget-object v3, v9, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mPrimaryCodePaths:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c8

    iget-object v3, v7, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x1

    :cond_c8
    monitor-exit v8
    :try_end_c9
    .catchall {:try_start_6c .. :try_end_c9} :catchall_7c

    :goto_c9
    if-eqz v16, :cond_d0

    iget-object v0, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    :cond_d0
    :goto_d0
    iget-object v0, v1, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    if-ne v2, v6, :cond_f4

    iget-object v3, v0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    iget-object v6, v3, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_db
    iget-object v3, v3, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e7

    const/4 v3, 0x1

    goto :goto_e8

    :cond_e7
    move v3, v13

    :goto_e8
    monitor-exit v6
    :try_end_e9
    .catchall {:try_start_db .. :try_end_e9} :catchall_f1

    if-eqz v3, :cond_ff

    iget-object v0, v0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    goto :goto_ff

    :catchall_f1
    move-exception v0

    :try_start_f2
    monitor-exit v6
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f1

    throw v0

    :cond_f4
    iget-object v0, v0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, v2, v5}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeUserPackage(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ff

    invoke-virtual {v0, v4}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    :cond_ff
    :goto_ff
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_19

    :goto_103
    :try_start_103
    monitor-exit v8
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_7c

    throw v0

    :cond_105
    return-void
.end method

.method public final executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/Installer$Batch;->execute(Lcom/android/server/pm/Installer;)V
    :try_end_5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    const-string/jumbo p1, "PackageManager"

    const-string v0, "Failed to execute pending operations"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final fixAppsDataOnBoot()Ljava/util/concurrent/Future;
    .registers 9

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_7
    move v4, v0

    goto :goto_b

    :cond_9
    const/4 v0, 0x3

    goto :goto_7

    :goto_b
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object v0, v7, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_14
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_2e

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    new-instance v0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1, p0, v4}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/AppDataHelper;Ljava/util/List;I)V

    const-string/jumbo p0, "prepareAppData"

    invoke-static {v0, p0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :catchall_2e
    move-exception v0

    move-object p0, v0

    :try_start_30
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_38
    throw p0
.end method

.method public final prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;
    .registers 15

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_9
    invoke-virtual {p2, p4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, ":ephemeralapp:complete"

    goto :goto_18

    :cond_16
    const-string v0, ":complete"

    :goto_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_61

    iget-object v8, p2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iget-object v3, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    move-object v5, v2

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v3

    iget v3, p2, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_45

    const/4 v0, 0x1

    :goto_41
    move v1, p5

    move v7, v0

    move v0, p4

    goto :goto_47

    :cond_45
    const/4 v0, 0x0

    goto :goto_41

    :goto_47
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/Installer;->buildCreateAppDataArgs(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/CreateAppDataArgs;

    move-result-object v6

    iput p3, v6, Landroid/os/CreateAppDataArgs;->previousAppId:I

    invoke-virtual {p1, v6}, Lcom/android/server/pm/Installer$Batch;->createAppData(Landroid/os/CreateAppDataArgs;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    move-object v3, v4

    move v4, v0

    new-instance v0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;

    move-object v7, p2

    move-object v2, v5

    move v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/AppDataHelper;Ljava/lang/String;Ljava/lang/String;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :catchall_61
    move-exception v0

    move-object p0, v0

    :try_start_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_61

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final prepareAppDataAfterInstallLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .registers 10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_55

    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0}, Lcom/android/server/pm/UserManagerService;->getUsersInternal(ZZZ)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :goto_36
    if-ge v2, v4, :cond_4d

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v6}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v7

    if-eqz v7, :cond_4b

    add-int/lit8 v7, v5, 0x1

    aput v6, v3, v5

    move v5, v7

    :cond_4b
    add-int/2addr v2, v0

    goto :goto_36

    :cond_4d
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;[I)V

    return-void

    :catchall_55
    move-exception p0

    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/pkg/PackageStateInternal;IIZ)V
    .registers 14

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_15

    const-string/jumbo p0, "PackageManager"

    const-string/jumbo p1, "Package was null!"

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_15
    invoke-static {p2}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string/jumbo p0, "PackageManager"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Skipping preparing app data for "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_35
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_3c
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_5f

    const/4 v5, -0x1

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;

    move-object v3, v2

    move-object v5, v4

    move-object v2, p1

    move v4, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppDataHelper;ZLcom/android/server/pm/PackageSetting;II)V

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    return-void

    :catchall_5f
    move-exception v0

    move-object p0, v0

    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_5f

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final prepareAppDataContentsLeafLIF(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V
    .registers 7

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_66

    if-nez p2, :cond_16

    move-object p2, p1

    check-cast p2, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    invoke-interface {p2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object p2

    goto :goto_1a

    :cond_16
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object p2

    :goto_1a
    if-eqz p2, :cond_66

    invoke-static {p2}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_66

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2d

    goto :goto_66

    :cond_2d
    :try_start_2d
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result p2

    if-nez p2, :cond_36

    goto :goto_66

    :cond_36
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object p2

    invoke-interface {p2, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V
    :try_end_3d
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2d .. :try_end_3d} :catch_49

    :try_start_3d
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p0, v0, v1, p1, p3}, Landroid/os/IInstalld;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_43

    return-void

    :catch_43
    move-exception p0

    :try_start_44
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    throw p0
    :try_end_49
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_44 .. :try_end_49} :catch_49

    :catch_49
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to link native for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    return-void
.end method

.method public final prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;[I)V
    .registers 14

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_7c

    invoke-static {p1}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string/jumbo p0, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Skipping preparing app data for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-static {p2, p1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_27
    new-instance v2, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v2}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    iget-object v7, v1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v3, Landroid/os/storage/StorageManagerInternal;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/os/storage/StorageManagerInternal;

    array-length v9, p2

    const/4 v1, 0x0

    move v10, v1

    :goto_47
    if-ge v10, v9, :cond_77

    aget v5, p2, v10

    invoke-static {v5}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {v8, v5}, Landroid/os/storage/StorageManagerInternal;->isCeStoragePrepared(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    const/4 v1, 0x3

    move v6, v1

    goto :goto_61

    :cond_5a
    invoke-virtual {v7, v5}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    move-result v1

    if-eqz v1, :cond_71

    move v6, v0

    :goto_61
    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;

    invoke-direct {p1, v7, v5, v3, v8}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/UserManagerService$LocalService;ILcom/android/server/pm/PackageSetting;Landroid/os/storage/StorageManagerInternal;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_73

    :cond_71
    move-object v1, p0

    move-object v3, p1

    :goto_73
    add-int/2addr v10, v0

    move-object p0, v1

    move-object p1, v3

    goto :goto_47

    :cond_77
    move-object v1, p0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    return-void

    :catchall_7c
    move-exception v0

    move-object p0, v0

    :try_start_7e
    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7c

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v9, p3

    const-string/jumbo v0, "reconcileAppsData for "

    const-string v2, " u"

    const-string v4, " 0x"

    invoke-static {v5, v0, v3, v2, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " migrateAppData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "PackageManager"

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-eqz p5, :cond_38

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    goto :goto_39

    :cond_38
    move-object v12, v2

    :goto_39
    const/4 v13, 0x5

    :try_start_3a
    iget-object v0, v1, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v4
    :try_end_40
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3a .. :try_end_40} :catch_4e

    if-nez v4, :cond_43

    goto :goto_60

    :cond_43
    :try_start_43
    iget-object v0, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, v3, v5, v9}, Landroid/os/IInstalld;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_49

    goto :goto_60

    :catch_49
    move-exception v0

    :try_start_4a
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    throw v2
    :try_end_4e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4a .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to cleanup deleted dirs: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_60
    invoke-static/range {p1 .. p2}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static/range {p1 .. p2}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v14

    iget-object v2, v1, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v15

    and-int/lit8 v2, v9, 0x2

    const/16 v16, 0x0

    const-string v4, "Failed to destroy: "

    const-string v6, " due to: "

    const-string v7, "Destroying "

    if-eqz v2, :cond_115

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-static {v5}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v2

    if-eqz v2, :cond_87

    goto :goto_96

    :cond_87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Yikes, someone asked us to reconcile CE storage while "

    const-string v2, " was still locked; this would have caused massive data loss!"

    invoke-static {v5, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_96
    :goto_96
    invoke-static {v0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    array-length v8, v2

    move/from16 v13, v16

    :goto_9d
    if-ge v13, v8, :cond_115

    move-object/from16 v17, v2

    aget-object v2, v17, v13

    move-object/from16 v18, v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    :try_start_a9
    invoke-static {v15, v3, v4, v5}, Lcom/android/server/pm/AppDataHelper;->assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_ac
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_a9 .. :try_end_ac} :catch_b7

    move-object v10, v6

    move/from16 v20, v8

    move-object/from16 v9, v18

    move-object/from16 v18, v17

    move/from16 v17, v13

    move-object v13, v7

    goto :goto_106

    :catch_b7
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :try_start_ce
    iget-object v2, v1, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_d0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_ce .. :try_end_d0} :catch_e9

    move-object v3, v6

    const/4 v6, 0x2

    move-object/from16 v19, v7

    move/from16 v20, v8

    const-wide/16 v7, 0x0

    move-object v10, v3

    move-object/from16 v9, v18

    move-object/from16 v3, p1

    move-object/from16 v18, v17

    move/from16 v17, v13

    move-object/from16 v13, v19

    :try_start_e3
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_e6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_e3 .. :try_end_e6} :catch_e7

    goto :goto_106

    :catch_e7
    move-exception v0

    goto :goto_f6

    :catch_e9
    move-exception v0

    move-object/from16 v3, p1

    move-object v10, v6

    move/from16 v20, v8

    move-object/from16 v9, v18

    move-object/from16 v18, v17

    move/from16 v17, v13

    move-object v13, v7

    :goto_f6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_106
    add-int/lit8 v0, v17, 0x1

    move-object v4, v9

    move-object v6, v10

    move-object v7, v13

    move-object/from16 v2, v18

    move/from16 v8, v20

    move/from16 v9, p3

    move/from16 v10, p4

    move v13, v0

    goto :goto_9d

    :cond_115
    move-object v9, v4

    move-object v10, v6

    move-object v13, v7

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_177

    invoke-static {v14}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v14

    array-length v2, v14

    move/from16 v4, v16

    :goto_123
    if-ge v4, v2, :cond_177

    aget-object v6, v14, v4

    move v7, v4

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    :try_start_12c
    invoke-static {v15, v3, v4, v5}, Lcom/android/server/pm/AppDataHelper;->assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_12f
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_12c .. :try_end_12f} :catch_135

    move/from16 v17, v2

    move/from16 v18, v7

    :goto_133
    const/4 v2, 0x5

    goto :goto_172

    :catch_135
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x5

    invoke-static {v6, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    move v6, v2

    :try_start_14d
    iget-object v2, v1, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_14f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_14d .. :try_end_14f} :catch_15d

    move v8, v6

    const/4 v6, 0x1

    move/from16 v18, v7

    move/from16 v17, v8

    const-wide/16 v7, 0x0

    :try_start_157
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_15a
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_157 .. :try_end_15a} :catch_15b

    goto :goto_133

    :catch_15b
    move-exception v0

    goto :goto_162

    :catch_15d
    move-exception v0

    move/from16 v17, v6

    move/from16 v18, v7

    :goto_162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_172
    add-int/lit8 v4, v18, 0x1

    move/from16 v2, v17

    goto :goto_123

    :cond_177
    const-wide/32 v7, 0x40000

    const-string/jumbo v0, "prepareAppDataAndMigrate"

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v2, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v2}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    invoke-interface {v15, v3}, Lcom/android/server/pm/Computer;->getVolumePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move/from16 v3, v16

    move v10, v3

    :goto_192
    if-ge v3, v9, :cond_1d6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v13, v3, 0x1

    move-object v3, v4

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    if-nez v6, :cond_1ae

    const-string/jumbo v3, "Odd, missing scanned package "

    invoke-static {v3, v4, v11}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1bd

    :cond_1ae
    if-eqz p5, :cond_1bf

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isCoreApp()Z

    move-result v6

    if-nez v6, :cond_1bf

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1bd
    move v3, v13

    goto :goto_192

    :cond_1bf
    invoke-interface {v3, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_1d3

    move/from16 v6, p4

    move v4, v5

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/pkg/PackageStateInternal;IIZ)V

    add-int/lit8 v10, v10, 0x1

    :cond_1d3
    move/from16 v5, p2

    goto :goto_1bd

    :cond_1d6
    invoke-virtual {v1, v2}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reconcileAppsData finished "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " packages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12
.end method
