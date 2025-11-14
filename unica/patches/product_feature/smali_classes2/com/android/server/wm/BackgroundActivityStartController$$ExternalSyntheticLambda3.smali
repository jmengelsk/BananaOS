.class public final synthetic Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/BackgroundActivityStartController$BalExemptionCheck;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/BackgroundActivityStartController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BackgroundActivityStartController;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/BackgroundActivityStartController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 7

    iget v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/BackgroundActivityStartController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_286

    iget-object v0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    iget v0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPid:I

    iget-object v1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPackage:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2b

    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x7

    const-string/jumbo v0, "SYSTEM_ALERT_WINDOW permission is granted"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    goto :goto_2d

    :cond_2b
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    :goto_2d
    return-object p0

    :pswitch_2e  #0xd
    iget-object v0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4b

    iget v0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    iget p1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->hasBalPermission(II)Z

    move-result p0

    if-eqz p0, :cond_4b

    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x6

    const-string/jumbo v0, "realCallingUid has BAL permission."

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    goto :goto_4d

    :cond_4b
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    :goto_4d
    return-object p0

    :pswitch_4e  #0xc
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_BACKGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    iget-object v1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    :pswitch_57  #0xb
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_FOREGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    iget-object v1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    :pswitch_60  #0xa
    iget-boolean v0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasNonAppVisibleWindow:Z

    if-eqz v0, :cond_85

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "realCallingUid has non-app visible window "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    iget p1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MirrorActiveUids;->getNonAppVisibleWindowDetails(I)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xb

    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    goto :goto_87

    :cond_85
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    :goto_87
    return-object v0

    :pswitch_88  #0x9
    const/4 v0, 0x2

    iget v1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAppSwitchState:I

    if-eq v1, v0, :cond_9a

    const/4 v0, 0x1

    if-eq v1, v0, :cond_9a

    iget v0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    iget-object v1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPackage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->isHomeApp(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a8

    :cond_9a
    iget-boolean p0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasVisibleNotPinnedActivity:Z

    if-eqz p0, :cond_a8

    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x4

    const-string/jumbo v0, "realCallingUid has visible non-pinned window"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    goto :goto_aa

    :cond_a8
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    :goto_aa
    return-object p0

    :pswitch_ab  #0x8
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_BACKGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    iget-object v1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallerApp:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    :pswitch_b4  #0x7
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController;->BAL_CHECK_FOREGROUND:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    iget-object v1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallerApp:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    :pswitch_bd  #0x6
    const/4 v0, 0x1

    const-string/jumbo v1, "window_manager"

    const-string/jumbo v2, "system_exempt_from_activity_bg_start_restriction_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e6

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object p0

    const/16 v0, 0x82

    iget-object v1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPackage:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_e6

    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x6

    const-string/jumbo v0, "OP_SYSTEM_EXEMPT_FROM_ACTIVITY_BG_START_RESTRICTION appop is granted"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    goto :goto_e8

    :cond_e6
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    :goto_e8
    return-object p0

    :pswitch_e9  #0x5
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPid:I

    iget v1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    iget-object p1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_101

    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x7

    const-string/jumbo v0, "SYSTEM_ALERT_WINDOW permission is granted"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    goto :goto_103

    :cond_101
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    :goto_103
    return-object p0

    :pswitch_104  #0x4
    iget v0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPid:I

    iget p1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->hasBalPermission(II)Z

    move-result p0

    if-eqz p0, :cond_118

    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x6

    const-string/jumbo v0, "START_ACTIVITIES_FROM_BACKGROUND permission granted"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    goto :goto_11a

    :cond_118
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    :goto_11a
    return-object p0

    :pswitch_11b  #0x3
    iget-object v0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPackage:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->isHomeApp(ILjava/lang/String;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_12f

    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p1, "Home app"

    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1cb

    :cond_12f
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_14a

    iget v4, v4, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, v4, :cond_14a

    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p1, "Active ime"

    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1cb

    :cond_14a
    iget-boolean p1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsCallingUidPersistentSystemProcess:Z

    if-eqz p1, :cond_158

    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string/jumbo p1, "callingUid is persistent system process"

    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    goto/16 :goto_1cb

    :cond_158
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget p0, p0, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    invoke-static {v1, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_16d

    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string/jumbo p1, "Recents Component"

    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    goto :goto_1cb

    :cond_16d
    if-ltz v1, :cond_17b

    iget p0, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    if-ne p0, v1, :cond_17b

    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p1, "Device Owner"

    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    goto :goto_1cb

    :cond_17b
    if-ltz v1, :cond_1a1

    iget-object p0, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileOwnerUids:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a1

    invoke-static {}, Landroid/app/admin/DeviceStateCache;->getInstance()Landroid/app/admin/DeviceStateCache;

    move-result-object p0

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceStateCache;->hasAffiliationWithDevice(I)Z

    move-result p0

    if-eqz p0, :cond_1a1

    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p1, "Affiliated Profile Owner"

    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    goto :goto_1cb

    :cond_1a1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    iget-object p1, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_1b7

    const/4 p0, 0x0

    goto :goto_1bf

    :cond_1b7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    :goto_1bf
    if-eqz p0, :cond_1c9

    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p1, "Companion App"

    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    goto :goto_1cb

    :cond_1c9
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    :goto_1cb
    return-object p0

    :pswitch_1cc  #0x2
    iget-boolean v0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasNonAppVisibleWindow:Z

    if-eqz v0, :cond_1f1

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "callingUid has non-app visible window "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    iget p1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MirrorActiveUids;->getNonAppVisibleWindowDetails(I)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xb

    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    goto :goto_1f3

    :cond_1f1
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    :goto_1f3
    return-object v0

    :pswitch_1f4  #0x1
    iget p1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_20e

    const/4 p0, 0x0

    goto :goto_216

    :cond_20e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    :goto_216
    if-eqz p0, :cond_222

    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x3

    const-string/jumbo v0, "realCallingUid is a companion app."

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    goto :goto_224

    :cond_222
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    :goto_224
    return-object p0

    :pswitch_225  #0x0
    const/4 v0, 0x2

    iget v1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAppSwitchState:I

    if-eq v1, v0, :cond_275

    const/4 v0, 0x1

    if-eq v1, v0, :cond_275

    iget-object v0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPackage:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->isHomeApp(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_275

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    if-eqz v0, :cond_283

    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-nez v0, :cond_251

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIsAppSwitchDelayedByTransientLaunch:Z

    if-eqz v0, :cond_283

    :cond_251
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_283

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_283

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result p0

    if-eqz p0, :cond_283

    :cond_275
    iget-boolean p0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasVisibleNotPinnedActivity:Z

    if-eqz p0, :cond_283

    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x4

    const-string/jumbo v0, "callingUid has visible non-pinned window"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    goto :goto_285

    :cond_283
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    :goto_285
    return-object p0

    :pswitch_data_286
    .packed-switch 0x0
        :pswitch_225  #00000000
        :pswitch_1f4  #00000001
        :pswitch_1cc  #00000002
        :pswitch_11b  #00000003
        :pswitch_104  #00000004
        :pswitch_e9  #00000005
        :pswitch_bd  #00000006
        :pswitch_b4  #00000007
        :pswitch_ab  #00000008
        :pswitch_88  #00000009
        :pswitch_60  #0000000a
        :pswitch_57  #0000000b
        :pswitch_4e  #0000000c
        :pswitch_2e  #0000000d
    .end packed-switch
.end method
