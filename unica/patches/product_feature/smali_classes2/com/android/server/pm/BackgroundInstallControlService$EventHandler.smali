.class public final Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mService:Lcom/android/server/pm/BackgroundInstallControlService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/pm/BackgroundInstallControlService;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 20

    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Package event received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/os/Message;->what:I

    const-string v3, "BackgroundInstallControlService"

    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v1, v0, Landroid/os/Message;->what:I

    const-wide/16 v4, 0x0

    const-string/jumbo v2, "default:0"

    const-string/jumbo v6, "android.permission.INSTALL_PACKAGES"

    move-object/from16 v7, p0

    iget-object v7, v7, Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v1, :cond_d

    const-string v10, " from "

    if-eq v1, v9, :cond_2

    if-eq v1, v8, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-static {v1, v0, v3}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v7}, Lcom/android/server/pm/BackgroundInstallControlService;->initBackgroundInstalledPackages()V

    iget-object v2, v7, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v7, Lcom/android/server/pm/BackgroundInstallControlService;->mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    invoke-virtual {v2, v0, v8, v1}, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->notifyAllCallbacks(IILjava/lang/String;)V

    :cond_1
    const-string/jumbo v2, "handlePackageRemove: removing "

    invoke-static {v0, v2, v1, v10, v3}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v7, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/android/server/pm/BackgroundInstallControlService;->writeBackgroundInstalledPackagesToDisk()V

    return-void

    :cond_2
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_3

    const-string/jumbo v11, "handlePackageAdd: checking "

    invoke-static {v11, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_0
    iget-object v11, v7, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v12

    invoke-virtual {v11, v1, v12, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v12, v7, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v14, v7, Lcom/android/server/pm/BackgroundInstallControlService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iget-object v14, v14, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v14, v13, v6, v2, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v6, "handlePackageAdd "

    if-eqz v2, :cond_4

    if-eqz v0, :cond_17

    const-string v0, ": installer ("

    const-string v2, ") doesn\'t have INSTALL_PACKAGES permission, skipping"

    invoke-static {v6, v1, v0, v13, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-string/jumbo v0, "Package\'s historical install session not found, falling back to appInfo.createTimestamp: "

    move-wide/from16 v18, v4

    iget-wide v4, v11, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    :try_start_2
    iget-object v2, v7, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/PackageInstallerService;->getHistoricalSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v11, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda2;

    invoke-direct {v11, v1}, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v11, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda3;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-static {v11}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getCreatedMillis()J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :goto_0
    const-string/jumbo v2, "Retrieval of install time from historical session failed, falling back to appInfo.createTimestamp"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sub-long v16, v16, v4

    sub-long v14, v14, v16

    const-string/jumbo v0, "debug.gts.transparency.bg-install-apps"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "handlePackageAdd: is GTS tests, skipping ADB check"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-static {v12}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "handlePackageAdd: is installed by ADB, skipping"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    :goto_2
    iget-object v0, v7, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v8, v13}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;

    iget-wide v4, v2, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->startTimeStampMillis:J

    cmp-long v4, v4, v14

    if-lez v4, :cond_a

    goto :goto_3

    :cond_a
    iget-wide v4, v2, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->endTimeStampMillis:J

    cmp-long v2, v4, v18

    if-eqz v2, :cond_b

    cmp-long v2, v14, v4

    if-gtz v2, :cond_9

    :cond_b
    :goto_4
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_17

    const-string v0, ": is installed by ADB or was foreground installation, skipping"

    invoke-static {v6, v1, v0, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_c
    :goto_5
    const-string/jumbo v0, "handlePackageAdd: adding "

    const-string v2, " and notifying callbacks"

    invoke-static {v8, v0, v1, v10, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/android/server/pm/BackgroundInstallControlService;->initBackgroundInstalledPackages()V

    iget-object v0, v7, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    iget-object v0, v7, Lcom/android/server/pm/BackgroundInstallControlService;->mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->notifyAllCallbacks(IILjava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/BackgroundInstallControlService;->writeBackgroundInstalledPackagesToDisk()V

    goto/16 :goto_8

    :catch_1
    const-string/jumbo v0, "Package\'s installer not found: "

    invoke-static {v0, v1, v3}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_2
    const-string/jumbo v0, "Package\'s appInfo not found "

    invoke-static {v0, v1, v3}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_d
    move-wide/from16 v18, v4

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v4, 0x17

    if-eq v3, v9, :cond_e

    if-eq v3, v8, :cond_e

    if-eq v3, v4, :cond_e

    goto/16 :goto_8

    :cond_e
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v5, v7, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseArrayMap;->contains(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_6

    :cond_f
    iget-object v5, v7, Lcom/android/server/pm/BackgroundInstallControlService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v5, v3, v6, v2, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_17

    :goto_6
    iget-object v2, v7, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArrayMap;->contains(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v7, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v2, v0, v3, v5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v2, v7, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;

    iget-wide v2, v2, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->endTimeStampMillis:J

    cmp-long v2, v2, v18

    if-eqz v2, :cond_13

    :cond_11
    iget v2, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v2, v9, :cond_12

    goto :goto_8

    :cond_12
    new-instance v2, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;

    iget-wide v5, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-direct {v2, v5, v6}, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v3, v9, :cond_15

    if-eq v3, v8, :cond_14

    if-eq v3, v4, :cond_14

    goto :goto_7

    :cond_14
    iget-object v3, v2, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->activities:Ljava/util/Set;

    iget v4, v1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v2, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->activities:Ljava/util/Set;

    iget v4, v1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->activities:Ljava/util/Set;

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_16

    iget-wide v3, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iput-wide v3, v2, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->endTimeStampMillis:J

    goto :goto_7

    :cond_15
    iget-object v2, v2, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->activities:Ljava/util/Set;

    iget v1, v1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_7
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_17

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    :cond_17
    :goto_8
    return-void
.end method
