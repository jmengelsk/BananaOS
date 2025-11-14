.class public abstract Lcom/android/server/pm/ReconcilePackageUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/ReconcilePackageUtils;->ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z

    return-void
.end method

.method public static isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z
    .registers 2

    iget p0, p0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    const/4 v0, 0x3

    if-ge p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static reconcilePackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/SystemConfig;)Ljava/util/List;
    .registers 34

    move-object/from16 v2, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    new-instance v11, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v12, Landroid/util/ArrayMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {v12, v1}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v14, 0x2

    const/4 v15, 0x3

    if-eqz v1, :cond_f1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    iget-object v3, v1, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v3, :cond_3e

    invoke-virtual {v3, v15}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_3e
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-virtual {v12, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v1}, Lcom/android/server/pm/SharedLibrariesImpl;->getAllowedSharedLibInfos(Lcom/android/server/pm/InstallRequest;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v3}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a8

    invoke-virtual {v3}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v5

    if-ne v5, v14, :cond_82

    invoke-virtual {v13, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/utils/WatchedLongSparseArray;

    invoke-virtual {v3}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v6

    iget-object v5, v5, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v5

    if-gez v5, :cond_82

    goto :goto_b0

    :cond_82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Shared Library "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is being installed twice in this set!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/ReconcileFailure;

    const-string/jumbo v2, "Reconcile failed: "

    invoke-static {v2, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x6

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_a8
    new-instance v5, Lcom/android/server/utils/WatchedLongSparseArray;

    invoke-direct {v5}, Lcom/android/server/utils/WatchedLongSparseArray;-><init>()V

    invoke-virtual {v13, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b0
    invoke-virtual {v13, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/utils/WatchedLongSparseArray;

    invoke-virtual {v3}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v5

    iget-object v7, v4, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-boolean v5, v4, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

    if-eqz v5, :cond_dd

    instance-of v5, v7, Lcom/android/server/utils/Watchable;

    if-eqz v5, :cond_dd

    iget-object v5, v4, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v7}, Landroid/util/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_dd

    check-cast v7, Lcom/android/server/utils/Watchable;

    iget-object v5, v4, Lcom/android/server/utils/WatchedLongSparseArray;->mObserver:Lcom/android/server/utils/WatchedLongSparseArray$1;

    invoke-interface {v7, v5}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_dd
    iget-boolean v5, v4, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

    if-eqz v5, :cond_ec

    instance-of v5, v3, Lcom/android/server/utils/Watchable;

    if-eqz v5, :cond_ec

    check-cast v3, Lcom/android/server/utils/Watchable;

    iget-object v5, v4, Lcom/android/server/utils/WatchedLongSparseArray;->mObserver:Lcom/android/server/utils/WatchedLongSparseArray$1;

    invoke-interface {v3, v5}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    :cond_ec
    invoke-virtual {v4, v4}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    goto/16 :goto_53

    :cond_f1
    const-string/jumbo v0, "android"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_100
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/pm/InstallRequest;

    iget-object v0, v3, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v3}, Lcom/android/server/pm/SharedLibrariesImpl;->getAllowedSharedLibInfos(Lcom/android/server/pm/InstallRequest;)Ljava/util/List;

    move-result-object v5

    iget-boolean v1, v3, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_14b

    iget-boolean v1, v3, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    if-nez v1, :cond_14b

    iget v1, v3, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_129

    const/4 v1, 0x0

    goto :goto_12b

    :cond_129
    const/16 v1, 0x8

    :goto_12b
    or-int/2addr v1, v6

    iget-object v8, v3, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iget-object v6, v3, Lcom/android/server/pm/InstallRequest;->mOriginalPs:Lcom/android/server/pm/PackageSetting;

    iget-object v4, v3, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    invoke-static {v1, v7, v8, v6, v4}, Lcom/android/server/pm/DeletePackageHelper;->mayDeletePackageLocked(ILandroid/os/UserHandle;Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/DeletePackageAction;

    move-result-object v1

    if-eqz v1, :cond_13a

    move-object v4, v1

    goto :goto_14c

    :cond_13a
    new-instance v1, Lcom/android/server/pm/ReconcileFailure;

    const-string/jumbo v2, "May not delete "

    const-string v3, " to replace"

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0xa

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_14b
    move-object v4, v7

    :goto_14c
    iget v1, v3, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    iget v6, v3, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    iget-object v8, v3, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    iget-object v7, v3, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    iget-object v15, v3, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v15, v15, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    if-nez v15, :cond_15f

    :goto_15d
    const/4 v2, 0x0

    goto :goto_185

    :cond_15f
    iget-object v15, v3, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    if-nez v15, :cond_164

    goto :goto_15d

    :cond_164
    iget-object v15, v9, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v19, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v15

    :try_start_16b
    iget-object v14, v3, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-virtual {v9, v14}, Lcom/android/server/pm/SharedLibrariesImpl;->getLatestStaticSharedLibraVersionLPr(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v14

    if-eqz v14, :cond_183

    iget-object v2, v9, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v14}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    goto :goto_184

    :catchall_180
    move-exception v0

    goto/16 :goto_476

    :cond_183
    const/4 v2, 0x0

    :goto_184
    monitor-exit v15
    :try_end_185
    .catchall {:try_start_16b .. :try_end_185} :catchall_180

    :goto_185
    if-eqz v2, :cond_188

    goto :goto_18c

    :cond_188
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    :goto_18c
    if-eqz v8, :cond_195

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v14

    move-object/from16 v21, v14

    goto :goto_197

    :cond_195
    const/16 v21, 0x0

    :goto_197
    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_19d

    const/4 v6, 0x1

    goto :goto_19e

    :cond_19d
    const/4 v6, 0x0

    :goto_19e
    const/high16 v14, 0x4000000

    and-int/2addr v14, v1

    if-eqz v14, :cond_1a9

    const/4 v15, 0x1

    :goto_1a4
    move-object/from16 v14, p5

    move-object/from16 v26, v4

    goto :goto_1ab

    :cond_1a9
    const/4 v15, 0x0

    goto :goto_1a4

    :goto_1ab
    invoke-virtual {v14, v2}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v4

    invoke-virtual {v10, v2, v4, v1}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;I)Z

    move-result v1

    move/from16 v18, v1

    const/4 v1, 0x5

    if-eqz v18, :cond_208

    invoke-virtual {v10, v2, v8}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_1bf

    goto :goto_1de

    :cond_1bf
    if-eqz v6, :cond_1e9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "System package "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " signature changed; retaining data."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_1de
    move-object/from16 v15, p6

    move-object/from16 v19, v3

    move-object/from16 v6, v21

    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto/16 :goto_425

    :cond_1e9
    new-instance v0, Lcom/android/server/pm/ReconcileFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " upgrade keys do not match the previously installed version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_208
    move-object/from16 v1, p2

    :try_start_20a
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;
    :try_end_210
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_20a .. :try_end_210} :catch_384
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20a .. :try_end_210} :catch_388

    :try_start_210
    iget v0, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I
    :try_end_212
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_210 .. :try_end_212} :catch_381
    .catch Ljava/lang/IllegalArgumentException; {:try_start_210 .. :try_end_212} :catch_388

    const/4 v1, 0x2

    if-ge v0, v1, :cond_219

    const/16 v22, 0x1

    :goto_217
    const/4 v1, 0x3

    goto :goto_21c

    :cond_219
    const/16 v22, 0x0

    goto :goto_217

    :goto_21c
    if-ge v0, v1, :cond_221

    const/16 v23, 0x1

    goto :goto_223

    :cond_221
    const/16 v23, 0x0

    :goto_223
    :try_start_223
    iget-object v0, v3, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v0, :cond_239

    iget v0, v0, Lcom/android/server/pm/InstallArgs;->mInstallReason:I
    :try_end_229
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_223 .. :try_end_229} :catch_37e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_223 .. :try_end_229} :catch_388

    const/4 v1, 0x5

    if-ne v0, v1, :cond_239

    const/16 v24, 0x1

    :goto_22e
    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v7

    goto :goto_23c

    :goto_235
    move-object/from16 v15, p6

    goto/16 :goto_37a

    :cond_239
    const/16 v24, 0x0

    goto :goto_22e

    :goto_23c
    :try_start_23c
    invoke-static/range {v18 .. v24}, Lcom/android/server/pm/PackageManagerServiceUtils;->verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z

    move-result v1
    :try_end_240
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_23c .. :try_end_240} :catch_375
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23c .. :try_end_240} :catch_388

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    move-object/from16 v0, v21

    :try_start_246
    iget v7, v3, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    and-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_308

    iget-boolean v7, v3, Lcom/android/server/pm/InstallRequest;->mSystem:Z
    :try_end_24e
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_246 .. :try_end_24e} :catch_30d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_246 .. :try_end_24e} :catch_388

    if-nez v7, :cond_308

    if-nez v6, :cond_308

    if-nez v15, :cond_308

    if-eqz v0, :cond_308

    if-eqz v16, :cond_308

    :try_start_258
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v7

    if-eqz v7, :cond_308

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v7

    const/4 v15, 0x4

    invoke-virtual {v7, v0, v15}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v7

    if-eqz v7, :cond_308

    const-string/jumbo v7, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_271
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_258 .. :try_end_271} :catch_2ff
    .catch Ljava/lang/IllegalArgumentException; {:try_start_258 .. :try_end_271} :catch_388

    move/from16 v18, v1

    :try_start_273
    const-string/jumbo v1, "Non-preload app associated with system signature: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_279
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_273 .. :try_end_279} :catch_2f7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_273 .. :try_end_279} :catch_388

    :try_start_279
    iget-object v1, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;
    :try_end_27b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_279 .. :try_end_27b} :catch_2fb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_279 .. :try_end_27b} :catch_388

    :try_start_27b
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2f2

    sget-boolean v1, Lcom/android/server/pm/ReconcilePackageUtils;->ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z
    :try_end_289
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_27b .. :try_end_289} :catch_2f7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27b .. :try_end_289} :catch_388

    if-nez v1, :cond_2f2

    move-object/from16 v15, p6

    :try_start_28d
    iget-object v1, v15, Lcom/android/server/SystemConfig;->mPackageToSharedUidAllowList:Landroid/util/ArrayMap;

    iget-object v7, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;
    :try_end_291
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_28d .. :try_end_291} :catch_2f0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28d .. :try_end_291} :catch_388

    :try_start_291
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_297
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_291 .. :try_end_297} :catch_2ec
    .catch Ljava/lang/IllegalArgumentException; {:try_start_291 .. :try_end_297} :catch_388

    if-eqz v7, :cond_2aa

    move-object/from16 v19, v3

    :try_start_29b
    iget-object v3, v4, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ac

    goto/16 :goto_313

    :catch_2a5
    move-exception v0

    :goto_2a6
    move/from16 v1, v18

    goto/16 :goto_392

    :cond_2aa
    move-object/from16 v19, v3

    :cond_2ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Non-preload app "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " signed with platform signature and joining shared uid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", allowList: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/pm/ReconcileFailure;

    const/16 v2, -0x6b

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_2ec
    move-exception v0

    :goto_2ed
    move-object/from16 v19, v3

    goto :goto_2a6

    :catch_2f0
    move-exception v0

    goto :goto_2ed

    :cond_2f2
    move-object/from16 v15, p6

    :goto_2f4
    move-object/from16 v19, v3

    goto :goto_313

    :catch_2f7
    move-exception v0

    move-object/from16 v15, p6

    goto :goto_2ed

    :catch_2fb
    move-exception v0

    move-object/from16 v15, p6

    goto :goto_2ed

    :catch_2ff
    move-exception v0

    move-object/from16 v15, p6

    move/from16 v18, v1

    move-object/from16 v19, v3

    goto/16 :goto_392

    :cond_308
    move-object/from16 v15, p6

    move/from16 v18, v1

    goto :goto_2f4

    :catch_30d
    move-exception v0

    move-object/from16 v15, p6

    move/from16 v18, v1

    goto :goto_2ed

    :goto_313
    if-eqz v4, :cond_36b

    iget-object v1, v4, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1, v0}, Landroid/content/pm/SigningDetails;->mergeLineageWith(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;

    move-result-object v2

    if-eq v2, v1, :cond_360

    invoke-virtual {v4}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_327
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_359

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_354

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v0

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_356

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/SigningDetails;->mergeLineageWith(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v0

    move-object v2, v0

    goto :goto_356

    :cond_354
    move-object/from16 v21, v0

    :cond_356
    :goto_356
    move-object/from16 v0, v21

    goto :goto_327

    :cond_359
    move-object/from16 v21, v0

    iget-object v0, v4, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v2, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    goto :goto_362

    :cond_360
    move-object/from16 v21, v0

    :goto_362
    iget-object v0, v4, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    if-nez v0, :cond_36d

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, v4, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;
    :try_end_36a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_29b .. :try_end_36a} :catch_2a5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29b .. :try_end_36a} :catch_388

    goto :goto_36d

    :cond_36b
    move-object/from16 v21, v0

    :cond_36d
    :goto_36d
    move/from16 v8, v18

    move-object/from16 v6, v21

    const/4 v3, 0x2

    const/4 v7, 0x0

    goto/16 :goto_425

    :catch_375
    move-exception v0

    move-object/from16 v15, p6

    move-object/from16 v4, v19

    :goto_37a
    move-object/from16 v19, v3

    const/4 v1, 0x0

    goto :goto_392

    :catch_37e
    move-exception v0

    goto/16 :goto_235

    :catch_381
    move-exception v0

    goto/16 :goto_235

    :catch_384
    move-exception v0

    move-object/from16 v15, p6

    goto :goto_37a

    :catch_388
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Signing certificates comparison made on incomparable signing details but somehow passed verifySignatures!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_392
    if-eqz v6, :cond_46a

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v21

    if-eqz v4, :cond_400

    iget-object v0, v4, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    if-eqz v0, :cond_3f1

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v2, v4, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->canJoinSharedUserId(Ljava/lang/String;Landroid/content/pm/SigningDetails;Lcom/android/server/pm/SharedUserSetting;I)Z

    move-result v0

    if-nez v0, :cond_3f2

    const-string/jumbo v0, "ro.product.first_api_level"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_3d0

    new-instance v0, Lcom/android/server/pm/ReconcileFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Signature mismatch for shared user: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x68

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3d0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Signature mismatch on system package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for shared user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f1
    const/4 v3, 0x2

    :cond_3f2
    iget-object v0, v4, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v4, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    const/4 v4, 0x1

    goto :goto_403

    :cond_400
    const/4 v2, 0x0

    const/4 v3, 0x2

    move v4, v2

    :goto_403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "System package "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " signature changed; retaining data."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    move v8, v1

    move v7, v4

    move-object/from16 v6, v21

    :goto_425
    new-instance v0, Lcom/android/server/pm/ReconciledPackage;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v25, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v26

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/ReconciledPackage;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/DeletePackageAction;Ljava/util/List;Landroid/content/pm/SigningDetails;ZZ)V

    iget v1, v3, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_456

    iget v1, v3, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_456

    :try_start_440
    iget-object v1, v3, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    invoke-virtual {v9, v1, v12, v13}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;
    :try_end_448
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_440 .. :try_end_448} :catch_449

    goto :goto_456

    :catch_449
    move-exception v0

    new-instance v1, Lcom/android/server/pm/ReconcileFailure;

    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_456
    :goto_456
    iget-object v1, v3, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v1, :cond_45f

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    goto :goto_460

    :cond_45f
    const/4 v2, 0x3

    :goto_460
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v15, v2

    move/from16 v14, v25

    move-object/from16 v2, p1

    goto/16 :goto_100

    :cond_46a
    new-instance v1, Lcom/android/server/pm/ReconcileFailure;

    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v1

    :goto_476
    :try_start_476
    monitor-exit v15
    :try_end_477
    .catchall {:try_start_476 .. :try_end_477} :catchall_180

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw v0

    :cond_47a
    return-object v11
.end method
