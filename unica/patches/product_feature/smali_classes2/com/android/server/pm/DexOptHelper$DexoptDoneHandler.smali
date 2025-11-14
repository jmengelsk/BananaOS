.class public final Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/DexOptHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DexOptHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    return-void
.end method


# virtual methods
.method public final onDexoptDone(Lcom/android/server/art/model/DexoptResult;)V
    .locals 14

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v5, "first-boot"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "boot-after-ota"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "boot-after-mainline-update"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    invoke-virtual {v7}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getStatus()I

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_5

    if-eq v7, v2, :cond_4

    const/16 v8, 0x1e

    if-eq v7, v8, :cond_3

    goto :goto_1

    :cond_3
    add-int/2addr v6, v0

    goto :goto_1

    :cond_4
    add-int/2addr v4, v0

    goto :goto_1

    :cond_5
    add-int/2addr v5, v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    iget-wide v7, v0, Lcom/android/server/pm/DexOptHelper;->mBootDexoptStartTime:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v7

    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    long-to-int v1, v7

    iget-object v7, v0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    iget-object v9, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "opt_dialog_num_dexopted"

    invoke-static {v9, v10, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "opt_dialog_num_skipped"

    invoke-static {v4, v9, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "opt_dialog_num_failed"

    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda12;

    invoke-direct {v6, v0, v5}, Lcom/android/server/pm/DexOptHelper$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/DexOptHelper;Ljava/util/ArrayList;)V

    invoke-static {v8, v6}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string/jumbo v5, "opt_dialog_num_total"

    invoke-static {v4, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "opt_dialog_time_s"

    invoke-static {v0, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_2
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    iget-object v4, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    iget-object v4, v4, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/CompilerStats;->getOrCreatePackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    invoke-virtual {v5}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDexContainerFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDex2oatWallTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8, v6}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(JLjava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    iget-object v0, v0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    iget-object v0, v0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mPackageUsage:Lcom/android/server/pm/PackageUsage;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v0}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper$DexoptDoneHandler;->this$0:Lcom/android/server/pm/DexOptHelper;

    iget-object p0, p0, Lcom/android/server/pm/DexOptHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getReason()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "inactive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getStatus()I

    move-result v1

    if-ne v1, v2, :cond_9

    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v4, 0x0

    move-wide v8, v4

    move-wide v10, v8

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDexContainerFile()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getSizeBytes()J

    move-result-wide v12

    add-long/2addr v12, v5

    add-long/2addr v10, v12

    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getSizeBeforeBytes()J

    move-result-wide v12

    add-long/2addr v12, v5

    add-long/2addr v8, v12

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    const/16 v6, 0x80

    invoke-static/range {v6 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;JJZ)V

    goto :goto_4

    :cond_b
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->hasUpdatedArtifacts()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    const-class p1, Lcom/android/server/pinner/PinnerService;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pinner/PinnerService;

    invoke-virtual {p1, p0, v3}, Lcom/android/server/pinner/PinnerService;->update(Landroid/util/ArraySet;Z)V

    :cond_e
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x47de9523 -> :sswitch_2
        -0x23098d70 -> :sswitch_1
        -0xc5e4811 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
