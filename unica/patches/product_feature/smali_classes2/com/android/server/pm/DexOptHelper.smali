.class public final Lcom/android/server/pm/DexOptHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final designatedPkgs:[Ljava/lang/String;

.field public static sArtManagerLocalIsInitialized:Z

.field public static final sDexoptExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public volatile mBootDexoptStartTime:J

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/android/server/pm/DexOptHelper;->sDexoptExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/pm/DexOptHelper;->sArtManagerLocalIsInitialized:Z

    const-string/jumbo v6, "com.sec.android.app.camera"

    const-string/jumbo v7, "com.samsung.android.honeyboard"

    const-string/jumbo v2, "com.samsung.android.messaging"

    const-string/jumbo v3, "com.samsung.android.dialer"

    const-string/jumbo v4, "com.sec.android.app.myfiles"

    const-string/jumbo v5, "com.sec.android.gallery3d"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/DexOptHelper;->designatedPkgs:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowsCoreThreadTimeOut()Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method public static applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .registers 11

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_8
    :goto_8
    if-ge v2, v0, :cond_1f

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, p4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1f
    iget-object p1, p5, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    iget-boolean p1, p1, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    if-nez p1, :cond_26

    goto :goto_2e

    :cond_26
    new-instance p1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda13;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {p4, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_2e
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_37
    :goto_37
    if-ge v1, p1, :cond_5b

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    add-int/lit8 v1, v1, 0x1

    check-cast p5, Lcom/android/server/pm/pkg/PackageStateInternal;

    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, p5}, Lcom/android/server/pm/Computer;->findSharedNonSystemLibraries(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-interface {p5, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_37

    :cond_5b
    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static convertToDexOptResult(Lcom/android/server/art/model/DexoptResult;)I
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_45

    const/16 v1, 0x14

    if-eq v0, v1, :cond_43

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_41

    const/16 v1, 0x28

    if-ne v0, v1, :cond_17

    const/4 p0, 0x2

    return p0

    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DexoptResult for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    invoke-virtual {p0}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has unsupported status "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_41
    const/4 p0, -0x1

    return p0

    :cond_43
    const/4 p0, 0x1

    return p0

    :cond_45
    return v2
.end method

.method public static dexoptPackageUsingArtService(Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/dex/DexoptOptions;)Lcom/android/server/art/model/DexoptResult;
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    const-class v2, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v2}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerLocal;

    check-cast v2, Lcom/android/server/pm/local/PackageManagerLocalImpl;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/pm/local/PackageManagerLocalImpl;->withFilteredSnapshot(ILandroid/os/UserHandle;Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;

    move-result-object v0

    :try_start_1c
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result p0

    const/high16 v2, 0x10000000

    and-int/2addr p0, v2

    if-eqz p0, :cond_28

    const/16 p0, 0x80

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    invoke-virtual {p1, p0}, Lcom/android/server/pm/dex/DexoptOptions;->convertToDexoptParams(I)Lcom/android/server/art/model/DexoptParams;

    move-result-object p0

    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/art/ArtManagerLocal;->dexoptPackage(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Lcom/android/server/art/model/DexoptParams;)Lcom/android/server/art/model/DexoptResult;

    move-result-object p0
    :try_end_35
    .catchall {:try_start_1c .. :try_end_35} :catchall_39

    invoke-virtual {v0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->close()V

    return-object p0

    :catchall_39
    move-exception p0

    :try_start_3a
    invoke-virtual {v0}, Lcom/android/server/pm/local/PackageManagerLocalImpl$FilteredSnapshotImpl;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_42
    throw p0
.end method

.method public static getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;
    .registers 2

    :try_start_0
    const-class v0, Lcom/android/server/art/ArtManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/art/ArtManagerLocal;
    :try_end_8
    .catch Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDexUseManagerLocal()Lcom/android/server/art/DexUseManagerLocal;
    .registers 2

    :try_start_0
    const-class v0, Lcom/android/server/art/DexUseManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/art/DexUseManagerLocal;
    :try_end_8
    .catch Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDexoptOptionsByInstallRequest(Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/dex/DexManager;)Lcom/android/server/pm/dex/DexoptOptions;
    .registers 15

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez v1, :cond_d

    move v2, v0

    goto :goto_f

    :cond_d
    iget v2, v1, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    :goto_f
    const/4 v3, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v2, v6, :cond_1f

    if-nez v1, :cond_18

    move v2, v0

    goto :goto_1a

    :cond_18
    iget v2, v1, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    :goto_1a
    if-ne v2, v5, :cond_1d

    goto :goto_1f

    :cond_1d
    move v2, v0

    goto :goto_20

    :cond_1f
    :goto_1f
    move v2, v3

    :goto_20
    if-eqz v2, :cond_25

    const/16 v2, 0x800

    goto :goto_26

    :cond_25
    move v2, v0

    :goto_26
    or-int/lit16 v2, v2, 0x405

    iget-boolean v7, p0, Lcom/android/server/pm/InstallRequest;->mSpqrProfileGenerated:Z

    if-eqz v7, :cond_39

    new-instance v1, Lcom/android/server/pm/dex/DexoptOptions;

    const/4 v6, 0x0

    move v3, v2

    const/16 v2, 0x15

    const-string/jumbo v5, "speed-profile"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_39
    move v12, v3

    move v3, v2

    move v2, v12

    iget-boolean v7, p0, Lcom/android/server/pm/InstallRequest;->mSpegProfileGenerated:Z

    if-eqz v7, :cond_4c

    new-instance v1, Lcom/android/server/pm/dex/DexoptOptions;

    const/4 v6, 0x0

    const/16 v2, 0x16

    const-string/jumbo v5, "speed-profile"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_4c
    const-string/jumbo v7, "com.google.android.gms"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x6

    if-eqz v7, :cond_6b

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v9

    const/16 v7, 0x1e

    shr-long/2addr v9, v7

    long-to-int v7, v9

    if-ge v7, v8, :cond_6b

    new-instance v1, Lcom/android/server/pm/dex/DexoptOptions;

    const/4 v6, 0x0

    const/4 v2, 0x3

    const-string/jumbo v5, "verify"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_6b
    if-nez v1, :cond_6f

    move v7, v0

    goto :goto_71

    :cond_6f
    iget v7, v1, Lcom/android/server/pm/InstallArgs;->mInstallScenario:I

    :goto_71
    iget-object v9, p1, Lcom/android/server/pm/dex/DexManager;->mBatteryManager:Landroid/os/BatteryManager;

    if-nez v9, :cond_83

    iget-object v9, p1, Lcom/android/server/pm/dex/DexManager;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_83

    const-class v10, Landroid/os/BatteryManager;

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryManager;

    iput-object v9, p1, Lcom/android/server/pm/dex/DexManager;->mBatteryManager:Landroid/os/BatteryManager;

    :cond_83
    iget-object v9, p1, Lcom/android/server/pm/dex/DexManager;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v10, 0x4

    if-eqz v9, :cond_96

    invoke-virtual {v9, v8}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v11

    if-ne v11, v5, :cond_96

    invoke-virtual {v9, v10}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v9

    iget v11, p1, Lcom/android/server/pm/dex/DexManager;->mCriticalBatteryLevel:I

    if-le v9, v11, :cond_a0

    :cond_96
    iget-object p1, p1, Lcom/android/server/pm/dex/DexManager;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p1, :cond_a2

    invoke-virtual {p1}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    move-result p1

    if-lt p1, v5, :cond_a2

    :cond_a0
    move p1, v2

    goto :goto_a3

    :cond_a2
    move p1, v0

    :goto_a3
    if-eqz v7, :cond_c1

    if-eq v7, v2, :cond_c0

    if-eq v7, v6, :cond_ba

    if-ne v7, v5, :cond_b2

    if-eqz p1, :cond_b0

    const/16 v5, 0x8

    goto :goto_c1

    :cond_b0
    move v5, v8

    goto :goto_c1

    :cond_b2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid installation scenario"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ba
    if-eqz p1, :cond_be

    const/4 v5, 0x7

    goto :goto_c1

    :cond_be
    const/4 v5, 0x5

    goto :goto_c1

    :cond_c0
    move v5, v10

    :cond_c1
    :goto_c1
    new-instance p1, Lcom/android/server/pm/dex/DexoptOptions;

    invoke-direct {p1, v5, v3, v4}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;)V

    const/4 v6, 0x0

    if-eqz v1, :cond_cc

    iget-object v7, v1, Lcom/android/server/pm/InstallArgs;->mDexoptCompilerFilter:Ljava/lang/String;

    goto :goto_cd

    :cond_cc
    move-object v7, v6

    :goto_cd
    if-eqz v7, :cond_dc

    if-eqz v1, :cond_d3

    iget-object v6, v1, Lcom/android/server/pm/InstallArgs;->mDexoptCompilerFilter:Ljava/lang/String;

    :cond_d3
    new-instance v1, Lcom/android/server/pm/dex/DexoptOptions;

    move v2, v5

    move-object v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_dc
    move v1, v2

    move v2, v5

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result p0

    if-eqz v5, :cond_f4

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    move-result v5

    if-nez v5, :cond_f4

    if-eqz p0, :cond_f5

    :cond_f4
    move v0, v1

    :cond_f5
    if-eqz v0, :cond_101

    new-instance v1, Lcom/android/server/pm/dex/DexoptOptions;

    const/4 v6, 0x0

    const-string/jumbo v5, "skip"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_101
    return-object p1
.end method

.method public static getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .registers 14

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p0, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_NULL_PKG:Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    sget-object p0, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_APEX_PKG:Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;

    const/4 p0, 0x0

    invoke-direct {v1, p0}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/DexOptHelper;->applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    new-instance v1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;

    const/4 p0, 0x2

    invoke-direct {v1, p0}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/DexOptHelper;->applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo p0, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-direct {v7, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_3c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v6 .. v11}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_4c} :catch_4d

    goto :goto_4e

    :catch_4d
    const/4 p0, 0x0

    :goto_4e
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    if-eqz p0, :cond_6d

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_59
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_59

    :cond_6d
    new-instance v1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda5;

    const/4 p0, 0x0

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/DexOptHelper;->applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    new-instance v1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda5;

    iget-object p0, v5, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    const/4 p1, 0x1

    invoke-direct {v1, p1, p0}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/DexOptHelper;->applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const-string/jumbo p1, "PackageManager"

    if-nez p0, :cond_ee

    iget-object p0, v5, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    iget-boolean v1, p0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    if-eqz v1, :cond_ee

    const-string/jumbo v1, "Looking at historical package use"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Taking package "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " as reference in time use"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_da

    const-wide v8, 0xa4cb8000L

    sub-long/2addr v6, v8

    new-instance v1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda8;

    invoke-direct {v1, v6, v7}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda8;-><init>(J)V

    goto :goto_e0

    :cond_da
    new-instance v1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;

    const/4 v6, 0x3

    invoke-direct {v1, v6}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;-><init>(I)V

    :goto_e0
    iget-boolean p0, p0, Lcom/android/server/pm/PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    if-nez p0, :cond_e5

    goto :goto_f4

    :cond_e5
    new-instance p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_f4

    :cond_ee
    new-instance v1, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;

    const/4 p0, 0x3

    invoke-direct {v1, p0}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;-><init>(I)V

    :goto_f4
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/DexOptHelper;->applyPackageFilter(Lcom/android/server/pm/Computer;Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    new-instance p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Packages to be dexopted: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/pm/DexOptHelper;->packagesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Packages skipped from dexopt: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/server/pm/DexOptHelper;->packagesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static hasBcpApexesChanged()Z
    .registers 10

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "BOOTCLASSPATH"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1c

    const-string/jumbo v1, "PackageManager"

    const-string/jumbo v2, "Unable to get BOOTCLASSPATH"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_5a

    :cond_1c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    move v6, v3

    :goto_29
    if-ge v6, v5, :cond_59

    aget-object v7, v1, v6

    new-array v8, v3, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    invoke-interface {v7}, Ljava/nio/file/Path;->getNameCount()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_56

    invoke-interface {v7, v3}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "apex"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_56

    invoke-interface {v7, v4}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    move-result-object v7

    invoke-interface {v7}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_59
    move-object v1, v2

    :goto_5a
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    iget-object v5, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    iget-boolean v2, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->activeApexChanged:Z

    if-eqz v2, :cond_69

    return v4

    :cond_82
    return v3
.end method

.method public static initializeArtManagerLocal(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .registers 7

    new-instance v0, Lcom/android/server/art/ArtManagerLocal;

    invoke-direct {v0, p0}, Lcom/android/server/art/ArtManagerLocal;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;

    iget-object v3, p1, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v2, v3}, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;-><init>(Lcom/android/server/pm/DexOptHelper;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/art/ArtManagerLocal;->addDexoptDoneCallback(ZLjava/util/concurrent/Executor;Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_LOW:Z

    if-nez v1, :cond_2a

    new-instance v1, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/art/ArtManagerLocal;->addDexoptDoneCallback(ZLjava/util/concurrent/Executor;Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;)V

    :cond_2a
    new-instance v1, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/art/ArtManagerLocal;->addDexoptDoneCallback(ZLjava/util/concurrent/Executor;Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;)V

    new-instance v1, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/art/ArtManagerLocal;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/art/ArtManagerLocal;->setBatchDexoptStartCallback(Ljava/util/concurrent/Executor;Lcom/android/server/art/ArtManagerLocal$BatchDexoptStartCallback;)V

    const-class p1, Lcom/android/server/art/ArtManagerLocal;

    invoke-static {p1, v0}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/android/server/pm/DexOptHelper;->sArtManagerLocalIsInitialized:Z

    new-instance p1, Lcom/android/server/pm/DexOptHelper$1;

    invoke-direct {p1, v0}, Lcom/android/server/pm/DexOptHelper$1;-><init>(Lcom/android/server/art/ArtManagerLocal;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static packagesToString(Ljava/util/List;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    move-object v2, p0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2a

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1a

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static performDexOptWithArtService(Lcom/android/server/pm/dex/DexoptOptions;I)I
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v1

    :try_start_a
    invoke-interface {v1, v0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_33

    const/4 v3, -0x1

    if-nez v2, :cond_15

    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    return v3

    :cond_15
    :try_start_15
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_33

    if-nez v2, :cond_1f

    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    return v3

    :cond_1f
    :try_start_1f
    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/DexoptOptions;->convertToDexoptParams(I)Lcom/android/server/art/model/DexoptParams;

    move-result-object p0

    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object p1

    invoke-virtual {p1, v1, v0, p0}, Lcom/android/server/art/ArtManagerLocal;->dexoptPackage(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Lcom/android/server/art/model/DexoptParams;)Lcom/android/server/art/model/DexoptResult;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/DexOptHelper;->convertToDexOptResult(Lcom/android/server/art/model/DexoptResult;)I

    move-result p0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_33

    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    return p0

    :catchall_33
    move-exception p0

    if-eqz v1, :cond_3e

    :try_start_36
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    throw p0
.end method

.method public static requestCopyPreoptedFiles()V
    .registers 9

    const-string/jumbo v0, "ro.cp_system_other_odex"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5e

    const-string/jumbo v0, "requested"

    const-string/jumbo v1, "sys.cppreopt"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x186a0

    add-long/2addr v4, v2

    move-wide v6, v2

    :cond_1d
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "finished"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v8, "PackageManager"

    if-nez v0, :cond_46

    const-wide/16 v6, 0x64

    :try_start_2f
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_32

    :catch_32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_1d

    const-string/jumbo v0, "timed-out"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "cppreopt did not finish!"

    invoke-static {v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "cppreopts took "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v6, v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    return-void
.end method

.method public static shouldCallArtService(Lcom/android/server/pm/InstallRequest;)Z
    .registers 13

    iget v0, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    const/high16 v1, 0x4000000

    and-int v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_c

    move v2, v4

    goto :goto_d

    :cond_c
    move v2, v3

    :goto_d
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_13

    move v0, v4

    goto :goto_14

    :cond_13
    move v0, v3

    :goto_14
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    iget-object v5, v5, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    iget-object v7, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v7, :cond_37

    iget v8, v7, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_37

    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    const-string/jumbo v9, "android"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_35

    goto :goto_37

    :cond_35
    move v8, v3

    goto :goto_38

    :cond_37
    :goto_37
    move v8, v4

    :goto_38
    sget-boolean v9, Lcom/android/server/apphibernation/AppHibernationService;->sIsServiceEnabled:Z

    const-string/jumbo v10, "PackageManager"

    if-eqz v9, :cond_64

    const-class v9, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    iget-object v9, v9, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v9, v6}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_65

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", hibernated during installation"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    :cond_64
    move v9, v3

    :cond_65
    :goto_65
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result p0

    and-int/2addr p0, v1

    if-eqz p0, :cond_6e

    move p0, v4

    goto :goto_6f

    :cond_6e
    move p0, v3

    :goto_6f
    if-nez v7, :cond_73

    move v1, v3

    goto :goto_75

    :cond_73
    iget v1, v7, Lcom/android/server/pm/InstallArgs;->mInstallScenario:I

    :goto_75
    if-nez v1, :cond_82

    const-string/jumbo v1, "persist.sys.app_install_boost"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_82

    move v1, v4

    goto :goto_83

    :cond_82
    move v1, v3

    :goto_83
    if-eqz v1, :cond_8b

    const-string/jumbo v6, "System is busy state and dexopt skipped!"

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    if-nez v0, :cond_9a

    if-eqz v5, :cond_9a

    if-nez v9, :cond_9a

    if-nez p0, :cond_9a

    if-nez v1, :cond_9a

    if-nez v2, :cond_9a

    if-eqz v8, :cond_9a

    move v3, v4

    :cond_9a
    if-eqz p0, :cond_a3

    const-string/jumbo p0, "Skip dexopt by request"

    invoke-static {v10, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_a3
    if-nez v3, :cond_ab

    const-string/jumbo p0, "Skip dexopt"

    invoke-static {v10, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    return v3
.end method


# virtual methods
.method public final performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z
    .registers 6

    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    goto :goto_4c

    :cond_12
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    iget-object v2, p1, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    invoke-interface {p0, v2, v0}, Lcom/android/server/pm/Computer;->isInstantApp(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_4c

    :cond_1f
    invoke-interface {p0, v2}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result p0

    if-eqz p0, :cond_2c

    goto :goto_4a

    :cond_2c
    iget p0, p1, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_37

    invoke-static {p1, v1}, Lcom/android/server/pm/DexOptHelper;->performDexOptWithArtService(Lcom/android/server/pm/dex/DexoptOptions;I)I

    move-result p0

    goto :goto_47

    :cond_37
    const-wide/16 v2, 0x4000

    const-string/jumbo p0, "dexopt"

    invoke-static {v2, v3, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 p0, 0x4

    :try_start_40
    invoke-static {p1, p0}, Lcom/android/server/pm/DexOptHelper;->performDexOptWithArtService(Lcom/android/server/pm/dex/DexoptOptions;I)I

    move-result p0
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_4d

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :goto_47
    const/4 p1, -0x1

    if-eq p0, p1, :cond_4c

    :goto_4a
    const/4 p0, 0x1

    return p0

    :cond_4c
    :goto_4c
    return v1

    :catchall_4d
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
