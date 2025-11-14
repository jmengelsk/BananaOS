.class public final Lcom/android/server/wm/PackageConfigurationUpdaterImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mGrammaticalGender:I

.field public mLocales:Landroid/os/LocaleList;

.field public mNightMode:Ljava/lang/Integer;

.field public mPackageName:Ljava/lang/String;

.field public final mPid:Ljava/util/Optional;

.field public mUserId:I


# direct methods
.method public constructor <init>(ILcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    iput-object p2, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public constructor <init>(ILcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    iput-object p2, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final commit()Z
    .registers 11

    const-string/jumbo v0, "commit: update of application configuration failed: userId or packageName not valid "

    const-string/jumbo v1, "commit: Override application configuration failed: cannot find pid "

    monitor-enter p0

    :try_start_7
    iget-object v2, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_4f

    :try_start_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_51

    :try_start_13
    iget-object v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_62

    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget-object v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-nez v0, :cond_55

    const-string/jumbo v0, "PackageConfigurationUpdaterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPid:Ljava/util/Optional;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_13 .. :try_end_46} :catchall_53

    :try_start_46
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_51

    :try_start_4a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4f

    return v6

    :catchall_4f
    move-exception v0

    goto :goto_b4

    :catchall_51
    move-exception v0

    goto :goto_af

    :catchall_53
    move-exception v0

    goto :goto_ab

    :cond_55
    :try_start_55
    iget v1, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v5, v0, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iput v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    goto :goto_91

    :cond_62
    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    const-wide/32 v8, 0x20000

    invoke-virtual {v1, v5, v8, v9, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-gez v1, :cond_91

    const-string/jumbo v1, "PackageConfigurationUpdaterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_55 .. :try_end_89} :catchall_53

    :try_start_89
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_89 .. :try_end_8d} :catchall_51

    :try_start_8d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_4f

    goto :goto_4d

    :cond_91
    :goto_91
    :try_start_91
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->updateConfig(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mUserId:I

    invoke-virtual {v0, v1, v5, p0}, Lcom/android/server/wm/PackageConfigPersister;->updateFromImpl(Ljava/lang/String;ILcom/android/server/wm/PackageConfigurationUpdaterImpl;)Z

    move-result v0
    :try_end_a2
    .catchall {:try_start_91 .. :try_end_a2} :catchall_53

    :try_start_a2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2
    :try_end_a6
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_51

    :try_start_a6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_4f

    return v0

    :goto_ab
    :try_start_ab
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_af
    monitor-exit v2
    :try_end_b0
    .catchall {:try_start_ab .. :try_end_b0} :catchall_51

    :try_start_b0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :goto_b4
    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_b0 .. :try_end_b5} :catchall_4f

    throw v0
.end method

.method public final setNightMode(I)V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public final updateConfig(ILjava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget-object v0, v0, Lcom/android/server/wm/WindowProcessControllerMap;->mUidMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    if-eqz p1, :cond_86

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_86

    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mLocales:Landroid/os/LocaleList;

    iget-object v1, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/LocaleOverlayHelper;->combineLocalesIfOverlayExists(Landroid/os/LocaleList;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_31
    if-ltz v1, :cond_86

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    iget-object v3, v2, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    iget v4, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mGrammaticalGender:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/wm/ConfigurationContainer;->applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;Ljava/lang/Integer;)Z

    :cond_4e
    iget-object v3, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mNightMode:Ljava/lang/Integer;

    iget v4, p0, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mGrammaticalGender:I

    iget-object v5, v2, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_5a
    if-ltz v5, :cond_83

    iget-object v6, v2, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v3, v0, v7}, Lcom/android/server/wm/ConfigurationContainer;->applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;Ljava/lang/Integer;)Z

    move-result v7

    if-eqz v7, :cond_80

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v7

    if-eqz v7, :cond_80

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    :cond_80
    add-int/lit8 v5, v5, -0x1

    goto :goto_5a

    :cond_83
    add-int/lit8 v1, v1, -0x1

    goto :goto_31

    :cond_86
    :goto_86
    return-void
.end method
