.class public abstract Lcom/android/server/wm/ActivityTaskManagerInternal;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public abstract attachApplication(Lcom/android/server/wm/WindowProcessController;)Z
.end method

.method public abstract canShowErrorDialogs(I)Z
.end method

.method public abstract checkCanCloseSystemDialogs(IILjava/lang/String;)Z
.end method

.method public abstract cleanupRecentTasksForUser()V
.end method

.method public abstract clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V
.end method

.method public abstract clearHomeStack()V
.end method

.method public abstract closeSystemDialogs(Ljava/lang/String;)V
.end method

.method public abstract dismissSplitScreenMode()V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;I)V
.end method

.method public abstract dumpForProcesses(Ljava/io/PrintWriter;ZLjava/lang/String;IZZI)Z
.end method

.method public abstract enableScreenAfterBoot(Z)V
.end method

.method public abstract getActivityName(Landroid/os/IBinder;)Landroid/content/ComponentName;
.end method

.method public abstract getAppTasks(ILjava/lang/String;)Ljava/util/List;
.end method

.method public abstract getAttachedNonFinishingActivityForTask(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
.end method

.method public abstract getLaunchObserverRegistry()Lcom/android/server/wm/LaunchObserverRegistryImpl;
.end method

.method public abstract getTaskToShowPermissionDialogOn(ILjava/lang/String;)I
.end method

.method public abstract getTopProcessState()I
.end method

.method public abstract getTopVisibleActivities()Ljava/util/List;
.end method

.method public abstract inTransientLaunchTransition()Z
.end method

.method public abstract isBaseOfLockedTask(Ljava/lang/String;)Z
.end method

.method public abstract moveTaskToBack(IZLandroid/os/Bundle;)Z
.end method

.method public abstract notifyActiveDreamChanged(Landroid/content/ComponentName;)V
.end method

.method public abstract onCleanUpApplicationRecord(Lcom/android/server/wm/WindowProcessController;)V
.end method

.method public abstract onForceStopPackage(Ljava/lang/String;IZZ)Z
.end method

.method public abstract onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V
.end method

.method public abstract onPackageAdded(Ljava/lang/String;Z)V
.end method

.method public abstract onPackageDataCleared(Ljava/lang/String;I)V
.end method

.method public abstract onPackageReplaced(Landroid/content/pm/ApplicationInfo;)V
.end method

.method public abstract onPackageUninstalled(ILjava/lang/String;)V
.end method

.method public abstract onPackagesSuspendedChanged(IZ[Ljava/lang/String;)V
.end method

.method public abstract onUserStopped(I)V
.end method

.method public abstract preBindApplication(Lcom/android/server/wm/WindowProcessController;Landroid/content/pm/ApplicationInfo;)Lcom/android/server/wm/ActivityTaskManagerInternal$PreBindInfo;
.end method

.method public abstract registerActivityStartInterceptor(ILcom/android/server/wm/ActivityInterceptorCallback;)V
.end method

.method public abstract registerRemoteAppControllerCallbacks(Lcom/android/server/remoteappmode/RemoteAppModeService$1;)V
.end method

.method public abstract registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V
.end method

.method public abstract removeRecentTasksByPackageName(ILjava/lang/String;)V
.end method

.method public abstract resumeTopActivities(Z)V
.end method

.method public abstract scheduleDestroyAllActivities()V
.end method

.method public abstract sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
.end method

.method public abstract setAllowAppSwitches(IILjava/lang/String;)V
.end method

.method public abstract showStrictModeViolationDialog()Z
.end method

.method public abstract shuttingDown(IZ)Z
.end method

.method public abstract startActivitiesAsPackage(Ljava/lang/String;Ljava/lang/String;I[Landroid/content/Intent;Landroid/os/Bundle;)I
.end method

.method public abstract startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILcom/android/server/am/PendingIntentRecord;Z)I
.end method

.method public abstract startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I
.end method

.method public abstract startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/am/PendingIntentRecord;Z)I
.end method

.method public abstract startActivityWithScreenshot(ILandroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)I
.end method

.method public abstract startDreamActivity(IILandroid/content/Intent;)Lcom/android/server/wm/AppTaskImpl;
.end method

.method public abstract startHomeActivity(ILjava/lang/String;)Z
.end method

.method public abstract startHomeOnAllDisplays(I)Z
.end method

.method public abstract startRemoteActivityAsCaller(Landroid/content/Intent;Lcom/android/server/wm/RemoteAppController$CallerInfo;ILandroid/os/Bundle;)V
.end method

.method public abstract unregisterRemoteAppControllerCallbacks(Lcom/android/server/remoteappmode/RemoteAppModeService$1;)V
.end method

.method public abstract writeActivitiesToProto(Landroid/util/proto/ProtoOutputStream;)V
.end method

.method public abstract writeProcessesToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IZ)V
.end method
