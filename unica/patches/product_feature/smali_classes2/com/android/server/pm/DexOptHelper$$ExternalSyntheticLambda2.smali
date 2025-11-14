.class public final synthetic Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/art/ArtManagerLocal$BatchDexoptStartCallback;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$2:Lcom/android/server/art/ArtManagerLocal;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/art/ArtManagerLocal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/pm/PackageManagerService;

    iput-object p3, p0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/art/ArtManagerLocal;

    return-void
.end method


# virtual methods
.method public final onBatchDexoptStart(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Ljava/util/List;Lcom/android/server/art/model/BatchDexoptParams$Builder;Landroid/os/CancellationSignal;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/art/ArtManagerLocal;

    const-string/jumbo v6, "bg-dexopt"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x4

    if-eqz v7, :cond_2

    const-string v7, "DEXOPT for bg-dexopt"

    invoke-static {v10, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    new-instance v7, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;

    iget-object v11, v5, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v11

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-boolean v9, v7, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mObserveStarted:Z

    iput-object v4, v7, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    invoke-direct {v4, v7, v11}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;-><init>(Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;Landroid/os/Handler;)V

    iput-object v4, v7, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    iput-object v0, v7, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mArtManager:Lcom/android/server/art/ArtManagerLocal;

    invoke-virtual {v7}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->isBatteryFullyCharged()Z

    move-result v0

    const/4 v4, 0x3

    const/4 v11, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t run bg dexopt by not fully charged: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v5, Landroid/os/BatteryManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryManagerInternal;

    invoke-virtual {v5}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " abortCount: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->abortCount:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    sget v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->abortCount:I

    add-int/2addr v0, v11

    sput v0, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->abortCount:I

    sput-boolean v9, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->policySelector:Z

    if-le v0, v4, :cond_1

    sput v9, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->abortCount:I

    sput-boolean v11, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->policySelector:Z

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->reachedToThermalThrottleLevel()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Can\'t run bg dexopt by thermal throttling"

    invoke-static {v10, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/os/CancellationSignal;->cancel()V

    :cond_2
    move v5, v9

    goto/16 :goto_b

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    const-string/jumbo v12, "Reordering packages based on priority"

    const-string/jumbo v13, "PackageManager"

    invoke-static {v13, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v12, Landroid/os/BatteryManagerInternal;

    invoke-static {v12}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryManagerInternal;

    invoke-virtual {v12}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v12

    const/16 v14, 0x50

    const-string v15, ","

    const-string v8, ") "

    if-gt v12, v14, :cond_13

    const-string/jumbo v12, "Not fully charged. Optimize top-priority packages only"

    invoke-static {v10, v12}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    const/16 v12, 0x9

    invoke-static {v12}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v12

    goto :goto_1

    :cond_4
    const/4 v12, -0x1

    :goto_1
    sput v12, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->initialSurfaceTemperature:I

    move/from16 v16, v9

    const/16 v9, 0x168

    move/from16 v17, v11

    const/16 v11, 0x186

    const/16 v18, 0x5

    if-gt v12, v9, :cond_5

    add-int/lit8 v12, v12, 0xa

    sput v12, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    goto :goto_2

    :cond_5
    const/16 v9, 0x172

    if-gt v12, v9, :cond_6

    add-int/lit8 v12, v12, 0x8

    sput v12, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    goto :goto_2

    :cond_6
    const/16 v9, 0x17c

    if-gt v12, v9, :cond_7

    add-int/lit8 v12, v12, 0x5

    sput v12, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    goto :goto_2

    :cond_7
    if-gt v12, v11, :cond_8

    add-int/lit8 v12, v12, 0x2

    sput v12, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    goto :goto_2

    :cond_8
    const/16 v9, 0x190

    sput v9, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "SurfaceTemperature ["

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v12, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->initialSurfaceTemperature:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "] threashold ["

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->SurfaceTemperatureThreshold:I

    const-string/jumbo v10, "]"

    invoke-static {v12, v10, v13, v9}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    sput-boolean v17, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->enableTemperaturePolicy:Z

    sget v9, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->abortCount:I

    add-int/lit8 v9, v9, 0x1

    sput v9, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->abortCount:I

    sput-boolean v16, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->policySelector:Z

    if-le v9, v4, :cond_9

    sput v16, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->abortCount:I

    sput-boolean v17, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->policySelector:Z

    :cond_9
    sget v4, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->initialSurfaceTemperature:I

    if-le v4, v11, :cond_a

    goto :goto_3

    :cond_a
    const/16 v18, -0x1

    :goto_3
    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x3

    invoke-virtual {v4, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/PriorityQueue;

    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Map$Entry;->comparingByValue(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-interface {v5}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-wide/from16 v21, v9

    move/from16 v9, v16

    :goto_4
    if-ge v9, v5, :cond_d

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v23

    if-nez v23, :cond_b

    goto :goto_4

    :cond_b
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v23

    sub-long v25, v19, v23

    cmp-long v25, v25, v21

    if-gez v25, :cond_c

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move/from16 v25, v5

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v12, v10, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_c
    move/from16 v25, v5

    :goto_5
    move/from16 v5, v25

    goto :goto_4

    :cond_d
    invoke-virtual {v12}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-direct {v10, v9, v14}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v10}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    new-instance v5, Ljava/util/ArrayList;

    const-string/jumbo v9, "com.google.android.gms"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move/from16 v9, v18

    :cond_f
    :goto_7
    invoke-virtual {v11}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_12

    const/4 v10, -0x1

    if-eq v9, v10, :cond_10

    if-lez v9, :cond_12

    :cond_10
    invoke-virtual {v11}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const-string/jumbo v14, "skipped because it\'s an exception package : "

    invoke-static {v14, v12, v13}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_11
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v9, :cond_f

    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    :cond_12
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Target Packages (size : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto/16 :goto_a

    :cond_13
    move/from16 v16, v9

    move/from16 v17, v11

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0xa

    invoke-virtual {v4, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-interface {v5, v9, v10}, Lcom/android/server/pm/Computer;->getUnusedPackages(J)Ljava/util/Set;

    move-result-object v4

    const-string/jumbo v5, "android.intent.action.MAIN"

    const-string/jumbo v9, "android.intent.category.LAUNCHER"

    invoke-static {v5, v9}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v19

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v21

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    invoke-interface/range {v19 .. v24}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_15

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_14
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_15
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Optimizable Packages(size : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Recently used Packages(size : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "Executable Packages(size : "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15, v9}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Remaining Packages(size : "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    new-instance v4, Lcom/android/server/art/model/DexoptParams$Builder;

    invoke-direct {v4, v6}, Lcom/android/server/art/model/DexoptParams$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptParams$Builder;->build()Lcom/android/server/art/model/DexoptParams;

    move-result-object v4

    invoke-virtual {v3, v0}, Lcom/android/server/art/model/BatchDexoptParams$Builder;->setPackages(Ljava/util/List;)Lcom/android/server/art/model/BatchDexoptParams$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/art/model/BatchDexoptParams$Builder;->setDexoptParams(Lcom/android/server/art/model/DexoptParams;)Lcom/android/server/art/model/BatchDexoptParams$Builder;

    const-string v0, "BgDexOptHelper"

    const-string/jumbo v4, "Start observing thermal"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v17

    iput-boolean v0, v7, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mObserveStarted:Z

    iget-object v4, v7, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mHandler:Lcom/android/server/pm/DexOptHelper$BgDexOptHelper$MyHandler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, v7, Lcom/android/server/pm/DexOptHelper$BgDexOptHelper;->mArtManager:Lcom/android/server/art/ArtManagerLocal;

    new-instance v4, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move/from16 v5, v16

    invoke-virtual {v0, v5, v4, v7}, Lcom/android/server/art/ArtManagerLocal;->addDexoptDoneCallback(ZLjava/util/concurrent/Executor;Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;)V

    :goto_b
    const-string/jumbo v0, "boot-after-mainline-update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "DEXOPT for boot-after-mainline-update"

    const/4 v4, 0x4

    invoke-static {v4, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/server/pm/DexOptHelper;->designatedPkgs:[Ljava/lang/String;

    array-length v6, v4

    move v9, v5

    :goto_c
    if-ge v9, v6, :cond_18

    aget-object v5, v4, v9

    move-object/from16 v7, p1

    invoke-interface {v7, v5}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v8

    if-nez v8, :cond_16

    const/4 v8, 0x0

    goto :goto_d

    :cond_16
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v8

    :goto_d
    if-eqz v8, :cond_17

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_18
    new-instance v4, Lcom/android/server/art/model/DexoptParams$Builder;

    invoke-direct {v4, v0}, Lcom/android/server/art/model/DexoptParams$Builder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "speed-profile"

    invoke-virtual {v4, v0}, Lcom/android/server/art/model/DexoptParams$Builder;->setCompilerFilter(Ljava/lang/String;)Lcom/android/server/art/model/DexoptParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptParams$Builder;->build()Lcom/android/server/art/model/DexoptParams;

    move-result-object v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v1}, Lcom/android/server/art/model/BatchDexoptParams$Builder;->setPackages(Ljava/util/List;)Lcom/android/server/art/model/BatchDexoptParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/art/model/BatchDexoptParams$Builder;->setDexoptParams(Lcom/android/server/art/model/DexoptParams;)Lcom/android/server/art/model/BatchDexoptParams$Builder;

    :cond_19
    return-void
.end method
