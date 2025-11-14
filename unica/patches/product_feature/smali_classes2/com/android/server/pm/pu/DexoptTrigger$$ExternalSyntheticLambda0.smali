.class public final synthetic Lcom/android/server/pm/pu/DexoptTrigger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/pu/DexoptTrigger;

.field public final synthetic f$1:Lcom/android/server/pm/pu/App;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/pu/DexoptTrigger;Lcom/android/server/pm/pu/App;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/pu/DexoptTrigger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/pu/DexoptTrigger;

    iput-object p2, p0, Lcom/android/server/pm/pu/DexoptTrigger$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/pu/App;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/pu/DexoptTrigger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/pu/DexoptTrigger;

    iget-object p0, p0, Lcom/android/server/pm/pu/DexoptTrigger$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/pu/App;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "PU_DexoptTrigger"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Trigger dexopt for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v1

    :try_start_26
    iget-object v2, p0, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v2

    if-nez v2, :cond_30

    const/4 v2, 0x0

    goto :goto_34

    :cond_30
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    :goto_34
    const/4 v3, 0x1

    if-eqz v2, :cond_39

    move v2, v3

    goto :goto_3a

    :cond_39
    const/4 v2, 0x0

    :goto_3a
    if-eqz v2, :cond_44

    invoke-static {v1, p0}, Lcom/android/server/pm/pu/DexoptTrigger;->performDexopt(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Lcom/android/server/pm/pu/App;)I

    move-result v4
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_41

    goto :goto_46

    :catchall_41
    move-exception p0

    goto/16 :goto_c7

    :cond_44
    const/16 v4, 0x1e

    :goto_46
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    const-string/jumbo v1, "PU_DexoptTrigger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/pu/App;->dexoptResultStatusString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    monitor-enter v5

    const/16 v1, 0x28

    if-ne v4, v1, :cond_a0

    :try_start_70
    iget-object v1, p0, Lcom/android/server/pm/pu/App;->mState:Lcom/android/server/pm/pu/App$State;

    sget-object v2, Lcom/android/server/pm/pu/App$State;->OPTIMIZED:Lcom/android/server/pm/pu/App$State;

    if-ne v1, v2, :cond_77

    goto :goto_80

    :cond_77
    iget v1, p0, Lcom/android/server/pm/pu/App;->mCancelCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/pm/pu/App;->mCancelCount:I

    sget-object v1, Lcom/android/server/pm/pu/App$State;->CANCELLED:Lcom/android/server/pm/pu/App$State;

    iput-object v1, p0, Lcom/android/server/pm/pu/App;->mState:Lcom/android/server/pm/pu/App$State;

    :goto_80
    iget-wide v1, p0, Lcom/android/server/pm/pu/App;->mWastedTimeMs:J

    invoke-virtual {p0}, Lcom/android/server/pm/pu/App;->getDex2oatWallTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/pm/pu/App;->mWastedTimeMs:J

    iget v1, p0, Lcom/android/server/pm/pu/App;->mCancelCount:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_9e

    iget-object v1, v0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p0, v0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_9e

    :catchall_9c
    move-exception p0

    goto :goto_c5

    :cond_9e
    :goto_9e
    monitor-exit v5

    return-void

    :cond_a0
    if-eqz v2, :cond_ad

    sget-object v1, Lcom/android/server/pm/pu/App$State;->OPTIMIZED:Lcom/android/server/pm/pu/App$State;

    iput-object v1, p0, Lcom/android/server/pm/pu/App;->mState:Lcom/android/server/pm/pu/App$State;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/pu/App;->mOptimizedTimeMs:J

    goto :goto_b7

    :cond_ad
    sget-object v1, Lcom/android/server/pm/pu/App$State;->REMOVED:Lcom/android/server/pm/pu/App$State;

    iput-object v1, p0, Lcom/android/server/pm/pu/App;->mState:Lcom/android/server/pm/pu/App$State;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/pu/App;->mOptimizedTimeMs:J

    :goto_b7
    iget-object v1, v0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p0, v0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v5

    return-void

    :goto_c5
    monitor-exit v5
    :try_end_c6
    .catchall {:try_start_70 .. :try_end_c6} :catchall_9c

    throw p0

    :goto_c7
    if-eqz v1, :cond_d1

    :try_start_c9
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_cd

    goto :goto_d1

    :catchall_cd
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d1
    :goto_d1
    throw p0
.end method
