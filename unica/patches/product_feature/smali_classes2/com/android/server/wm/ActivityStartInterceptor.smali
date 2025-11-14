.class public Lcom/android/server/wm/ActivityStartInterceptor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAInfo:Landroid/content/pm/ActivityInfo;

.field public mActivityOptions:Landroid/app/ActivityOptions;

.field public mCallingFeatureId:Ljava/lang/String;

.field public mCallingPackage:Ljava/lang/String;

.field public mCallingPid:I

.field public mCallingUid:I

.field public mComponentSpecified:Z

.field public mInTask:Lcom/android/server/wm/Task;

.field public mInTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public mIntent:Landroid/content/Intent;

.field public mIsInterceptedForAliasActivity:Z

.field public mIsInterceptedForCarLife:Z

.field public mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

.field public mPresumableLaunchDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mRInfo:Landroid/content/pm/ResolveInfo;

.field public mRealCallingPid:I

.field public mRealCallingUid:I

.field public mResolvedType:Ljava/lang/String;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mServiceContext:Landroid/content/Context;

.field public mSourceRecord:Lcom/android/server/wm/ActivityRecord;

.field public mStartFlags:I

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public mUserId:I

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object p3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_0

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v4, :cond_1

    move-object v2, v4

    goto :goto_1

    :cond_1
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v2, v2, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskFragment;

    :goto_1
    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchTaskFragmentToken(Landroid/os/IBinder;)Landroid/app/ActivityOptions;

    :cond_4
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    goto :goto_2

    :cond_5
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    goto :goto_2

    :cond_6
    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    iget-object v13, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingFeatureId:Ljava/lang/String;

    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    new-array v2, v3, [Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    aput-object v3, v2, v4

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    const/4 v15, 0x0

    const/4 v9, 0x0

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v6, 0x2

    const/4 v12, 0x0

    move/from16 v7, p1

    move/from16 v10, p2

    move-object/from16 v16, v2

    invoke-virtual/range {v5 .. v17}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(IIIIILandroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v0

    new-instance v1, Landroid/content/IntentSender;

    invoke-direct {v1, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v1
.end method

.method public final getActualDisplayContent(I)Lcom/android/server/wm/DisplayContent;
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final getInterceptorInfo(Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;
    .locals 9

    new-instance v0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;

    iget v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    iget v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iget v4, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iget v5, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget-object v6, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;-><init>(IIIIILandroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingFeatureId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->setCheckedOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->setClearOptionsAnimationRunnable(Ljava/lang/Runnable;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->build()Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    move-result-object p0

    return-object p0
.end method

.method public final hasAliasActivity(Landroid/content/Intent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForAliasActivity:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasCarLifeDisplay()Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;IILandroid/app/ActivityOptions;Lcom/android/server/wm/TaskDisplayArea;Z)Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    move/from16 v2, p7

    iput v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    move/from16 v2, p8

    iput v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mPresumableLaunchDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    move/from16 v2, p11

    iput-boolean v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mComponentSpecified:Z

    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ActivityStartInterceptor"

    if-nez v1, :cond_77

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_5

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_5

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v1, v5

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    move-object v7, v1

    check-cast v7, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v8, v7, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v9, v7, v5}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendingPackage(IILcom/android/server/pm/Computer;Ljava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    if-eqz v6, :cond_3

    const-string/jumbo v8, "android"

    iget-object v9, v6, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v4, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "android.app.extra.RESTRICTION"

    const-string/jumbo v5, "policy_suspend_packages"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iget v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v10, 0x0

    move/from16 p4, v1

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move/from16 p6, v6

    move/from16 p7, v8

    move-object/from16 p1, v9

    move/from16 p5, v10

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v10, 0x0

    move-object/from16 p2, v1

    move-object/from16 p3, v4

    move/from16 p4, v5

    move/from16 p6, v6

    move/from16 p7, v8

    move-object/from16 p1, v9

    move/from16 p5, v10

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v7, v1, v4, v5, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    return v3

    :cond_3
    iget v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getSuspendedDialogInfo(Ljava/lang/String;Landroid/content/pm/UserPackage;I)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v1

    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v4

    const/16 v8, 0xc

    if-ne v4, v8, :cond_4

    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v2

    :goto_1
    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v9, 0x4000000

    invoke-virtual {v0, v8, v9}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v8

    iget v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    move-object/from16 p3, v1

    move-object/from16 p4, v4

    move-object/from16 p1, v5

    move-object/from16 p2, v6

    move-object/from16 p5, v8

    move/from16 p6, v9

    invoke-static/range {p1 .. p6}, Lcom/android/internal/app/SuspendedAppActivity;->createSuspendedAppInterceptIntent(Ljava/lang/String;Landroid/content/pm/UserPackage;Landroid/content/pm/SuspendDialogInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move-object/from16 p2, v1

    move/from16 p7, v4

    move/from16 p6, v5

    move-object/from16 p3, v6

    move/from16 p4, v8

    move/from16 p5, v9

    move-object/from16 p1, v10

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v7, v4, v1, v5, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    return v3

    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v1, :cond_9

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v7, :cond_6

    goto :goto_4

    :cond_6
    iget-object v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-static {v1, v9}, Lcom/android/server/wm/ActivityRecord;->getLockTaskLaunchMode(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)I

    move-result v1

    iget v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget v10, v8, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    if-ne v10, v3, :cond_7

    iget-object v10, v8, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v9, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_7

    if-eq v1, v3, :cond_8

    if-eq v1, v6, :cond_7

    invoke-virtual {v8, v9, v7}, Lcom/android/server/wm/LockTaskController;->isPackageAllowlisted(ILjava/lang/String;)Z

    move-result v1

    goto :goto_3

    :cond_7
    move v1, v3

    goto :goto_3

    :cond_8
    move v1, v5

    :goto_3
    if-eqz v1, :cond_a

    :cond_9
    :goto_4
    move v1, v5

    goto :goto_5

    :cond_a
    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/android/internal/app/BlockedAppActivity;->createIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v11, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v12, 0x0

    move-object/from16 p2, v1

    move/from16 p7, v7

    move/from16 p6, v8

    move-object/from16 p3, v9

    move-object/from16 p1, v10

    move/from16 p4, v11

    move/from16 p5, v12

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v7, v8, v1, v9, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    move v1, v3

    :goto_5
    if-eqz v1, :cond_b

    :goto_6
    move v6, v3

    goto/16 :goto_3d

    :cond_b
    const/high16 v1, 0x54000000

    :try_start_0
    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-interface {v7, v8, v9}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_c

    :catch_0
    move v7, v5

    goto :goto_7

    :cond_c
    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v10, v8, v7}, Lcom/android/internal/app/HarmfulAppWarningActivity;->createHarmfulAppWarningIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentSender;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    iget v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/4 v10, 0x0

    iput-object v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move-object/from16 p2, v7

    move/from16 p7, v8

    move/from16 p6, v9

    move-object/from16 p3, v10

    move/from16 p4, v11

    move/from16 p5, v12

    move-object/from16 p1, v13

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    iget-object v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v10, v8, v7, v9, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    move v7, v3

    :goto_7
    if-eqz v7, :cond_d

    goto :goto_6

    :cond_d
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    const/4 v8, -0x1

    const-string v9, "ActivityTaskManager"

    const-string/jumbo v10, "android.intent.extra.PACKAGE_NAME"

    const-string/jumbo v11, "android.intent.category.HOME"

    const-string/jumbo v12, "android.intent.action.MAIN"

    if-eqz v7, :cond_22

    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    if-nez v7, :cond_e

    goto/16 :goto_12

    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStartInterceptor;->hasCarLifeDisplay()Z

    move-result v7

    if-nez v7, :cond_f

    goto/16 :goto_12

    :cond_f
    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v7, :cond_10

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v7

    if-eq v7, v8, :cond_10

    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v7

    goto :goto_8

    :cond_10
    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v7

    goto :goto_8

    :cond_11
    move v7, v5

    :goto_8
    iget-object v13, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v13, :cond_13

    :cond_12
    move v13, v5

    goto :goto_9

    :cond_13
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    if-eqz v13, :cond_12

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v13

    if-eqz v13, :cond_12

    iget-object v13, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v13, v11}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    iget-object v13, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    move v13, v3

    :goto_9
    iget-object v14, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v14, :cond_15

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_15

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v15, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    if-ne v14, v15, :cond_15

    :goto_a
    move/from16 p4, v3

    :cond_14
    move v1, v5

    goto/16 :goto_11

    :cond_15
    iget-object v14, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const-string/jumbo v15, "is_skip_intercept"

    invoke-virtual {v14, v15, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_16

    goto :goto_a

    :cond_16
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStartInterceptor;->getActualDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v15

    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v15, :cond_18

    :cond_17
    move/from16 p4, v3

    goto :goto_d

    :cond_18
    iget-object v15, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v15

    sub-int/2addr v15, v3

    :goto_b
    if-ltz v15, :cond_17

    iget-object v8, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v8, v15}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v16

    if-eqz v16, :cond_19

    new-instance v1, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda0;

    move/from16 p4, v3

    const/4 v3, 0x0

    invoke-direct {v1, v0, v7, v14, v3}, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityStartInterceptor;ILjava/util/ArrayList;I)V

    invoke-virtual {v8, v1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    goto :goto_c

    :cond_19
    move/from16 p4, v3

    :goto_c
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1a

    goto :goto_10

    :cond_1a
    add-int/lit8 v15, v15, -0x1

    move/from16 v3, p4

    const/high16 v1, 0x54000000

    const/4 v8, -0x1

    goto :goto_b

    :goto_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStartInterceptor;->getActualDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_f

    :cond_1b
    iget-object v3, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_e
    if-ltz v3, :cond_1e

    iget-object v8, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v8, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v14

    if-nez v14, :cond_1c

    new-instance v14, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda0;

    const/4 v15, 0x1

    invoke-direct {v14, v0, v7, v1, v15}, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityStartInterceptor;ILjava/util/ArrayList;I)V

    invoke-virtual {v8, v14}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    :cond_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1d

    goto :goto_10

    :cond_1d
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    :cond_1e
    :goto_f
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "com.baidu.carlife"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_10
    move/from16 v1, p4

    :goto_11
    if-nez v13, :cond_1f

    if-nez v1, :cond_1f

    goto/16 :goto_12

    :cond_1f
    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v14, "com.samsung.android.carlink.action.HOME"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v14, 0x10800000

    invoke-virtual {v8, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v14, "com.samsung.android.carlink"

    const-string/jumbo v15, "com.samsung.android.carlink.common.StartInterceptorActivity"

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v14, "android.intent.extra.USER_ID"

    invoke-virtual {v8, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v8, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const-string/jumbo v6, "orginal_intent"

    invoke-virtual {v8, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v14, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget v15, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/16 v17, 0x0

    move-object/from16 p5, v2

    move-object/from16 p7, v3

    move/from16 p11, v5

    move-object/from16 p6, v8

    move/from16 p8, v14

    move/from16 p10, v15

    move/from16 p9, v17

    invoke-virtual/range {p5 .. p11}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    move-object/from16 v3, p6

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    const/4 v14, 0x0

    invoke-virtual {v5, v3, v2, v8, v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-eqz v2, :cond_21

    if-eqz v5, :cond_21

    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    iput-object v14, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v6, "launch_display_id"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "is_back_to_home"

    invoke-virtual {v3, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "is_restart_app"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iput-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v1, :cond_20

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    :cond_20
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move/from16 v1, p4

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForCarLife:Z

    const-string/jumbo v1, "Start CarLifeStartInterceptActivity and handler intent"

    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    goto :goto_12

    :cond_21
    const/4 v5, 0x0

    :goto_12
    if-eqz v5, :cond_22

    :goto_13
    const/4 v6, 0x1

    goto/16 :goto_3d

    :cond_22
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    if-nez v1, :cond_23

    const-class v1, Lcom/samsung/android/knox/PersonaManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/PersonaManagerInternal;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    :cond_23
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/PersonaManagerInternal;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v1

    if-nez v1, :cond_25

    :cond_24
    :goto_14
    const/4 v1, 0x0

    goto/16 :goto_16

    :cond_25
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.app.telephonyui.action.OPEN_EMERGENCY_DIALER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "intent.action.INTERACTION_ICE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.knox.LOCKDOWN_SCREEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    :cond_26
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.incallui.InCallActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.incallui.call.InCallActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto/16 :goto_14

    :cond_27
    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->createLockdownIntent(I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/4 v14, 0x0

    iput-object v14, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_28

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iget v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v8, 0x0

    move-object/from16 p6, v1

    move-object/from16 p7, v2

    move/from16 p8, v3

    move/from16 p10, v5

    move/from16 p11, v6

    move-object/from16 p5, v7

    move/from16 p9, v8

    invoke-virtual/range {p5 .. p11}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_15

    :cond_28
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iget v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v8, 0x0

    move/from16 p8, v1

    move-object/from16 p6, v2

    move-object/from16 p7, v3

    move/from16 p10, v5

    move/from16 p11, v6

    move-object/from16 p5, v7

    move/from16 p9, v8

    invoke-virtual/range {p5 .. p11}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    :goto_15
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v14, 0x0

    invoke-virtual {v5, v1, v2, v3, v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x1

    :goto_16
    if-eqz v1, :cond_29

    :goto_17
    goto/16 :goto_13

    :cond_29
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v3

    if-nez v3, :cond_2b

    :cond_2a
    :goto_18
    const/4 v2, 0x0

    goto :goto_19

    :cond_2b
    iget v3, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v3, v5

    if-eqz v3, :cond_2c

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_2a

    iget-boolean v3, v1, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    if-eqz v3, :cond_2c

    goto :goto_18

    :cond_2c
    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v5, 0x54000000

    invoke-virtual {v0, v3, v5}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mServiceContext:Landroid/content/Context;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    const/4 v6, 0x1

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v14, v2, v6}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_2d

    goto :goto_18

    :cond_2d
    const v5, 0x10804000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.INTENT"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isStageRootTask()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_2e

    const/high16 v1, 0x8000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2e
    :goto_19
    const/4 v1, 0x5

    if-nez v2, :cond_2f

    const/4 v2, 0x0

    goto/16 :goto_1f

    :cond_2f
    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_30

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getLaunchOverTargetTaskId()I

    move-result v3

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getForceLaunchOverTargetTask()Z

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->semSetLaunchOverTargetTask(IZ)V

    :cond_30
    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/4 v14, 0x0

    iput-object v14, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v2, :cond_31

    goto :goto_1b

    :cond_31
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v2, :cond_32

    goto :goto_1a

    :cond_32
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_33

    :goto_1a
    const/4 v2, 0x0

    goto :goto_1b

    :cond_33
    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v3, v3, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskFragment;

    :goto_1b
    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    const-string/jumbo v5, "android.intent.extra.TASK_ID"

    if-eqz v3, :cond_38

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_37

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v6, v7}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    if-ne v2, v1, :cond_37

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mPresumableLaunchDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_34

    iget-object v2, v2, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_1c

    :cond_34
    const/4 v2, 0x0

    :goto_1c
    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_35

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_35

    move v2, v3

    :cond_35
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStartInterceptor;->getActualDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v2, "Ignore setLaunchTaskId when dex mode."

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_36
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_37

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    :cond_37
    :goto_1d
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v14, 0x0

    iput-object v14, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/Task;

    goto :goto_1e

    :cond_38
    if-eqz v2, :cond_39

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_39

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_39
    :goto_1e
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v2, :cond_3a

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    :cond_3a
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    iget v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iget v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iget-object v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v9, 0x0

    move/from16 p8, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v5

    move/from16 p10, v6

    move/from16 p11, v7

    move-object/from16 p5, v8

    move/from16 p9, v9

    invoke-virtual/range {p5 .. p11}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v14, 0x0

    invoke-virtual {v6, v3, v2, v5, v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x1

    :goto_1f
    if-eqz v2, :cond_3b

    goto/16 :goto_17

    :cond_3b
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mPresumableLaunchDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_3f

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-nez v3, :cond_3c

    goto/16 :goto_20

    :cond_3c
    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v11}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v5, "android.intent.category.SECONDARY_HOME"

    if-nez v3, :cond_3d

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto :goto_20

    :cond_3d
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mComponentSpecified:Z

    if-eqz v3, :cond_40

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Starting home with component specified, uid="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    invoke-static {v3, v6, v4}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result v3

    if-nez v3, :cond_3f

    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    iget v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/4 v7, -0x1

    const/4 v8, 0x1

    const-string/jumbo v9, "android.permission.MANAGE_ACTIVITY_TASKS"

    const/4 v10, 0x0

    move/from16 p5, v3

    move/from16 p6, v6

    move/from16 p9, v7

    move/from16 p10, v8

    move-object/from16 p7, v9

    move/from16 p8, v10

    invoke-static/range {p5 .. p10}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result v3

    if-nez v3, :cond_3e

    goto :goto_20

    :cond_3e
    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getHomeIntent()Landroid/content/Intent;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v7, v8, v6}, Lcom/android/server/wm/RootWindowContainer;->resolveHomeActivity(ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    :cond_3f
    :goto_20
    const/4 v2, 0x0

    goto/16 :goto_27

    :cond_40
    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-static {v3}, Lcom/android/server/wm/ActivityRecord;->isHomeIntent(Landroid/content/Intent;)Z

    move-result v3

    const/high16 v6, 0x10000000

    if-eqz v3, :cond_42

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mComponentSpecified:Z

    if-eqz v3, :cond_41

    goto :goto_21

    :cond_41
    const/4 v3, 0x0

    goto/16 :goto_24

    :cond_42
    :goto_21
    const-string/jumbo v3, "The home Intent is not correctly formatted"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v7, 0x1

    if-le v3, v7, :cond_46

    const-string/jumbo v3, "Purge home intent categories"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v8, v3

    sub-int/2addr v8, v7

    const/4 v7, 0x0

    :goto_22
    if-ltz v8, :cond_44

    aget-object v9, v3, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_43

    const/4 v7, 0x1

    :cond_43
    iget-object v10, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v10, v9}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_22

    :cond_44
    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    if-eqz v7, :cond_45

    goto :goto_23

    :cond_45
    move-object v5, v11

    :goto_23
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_46
    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_47

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_48

    :cond_47
    const-string/jumbo v3, "Purge home intent data/type"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_48
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mComponentSpecified:Z

    if-eqz v3, :cond_49

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Purge home intent component, "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_49
    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v3, 0x1

    :goto_24
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v11}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4a

    :goto_25
    const/4 v2, 0x0

    goto :goto_26

    :cond_4a
    iget-object v4, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mPresumableLaunchDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v5, v5, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->shouldPlacePrimaryHomeOnDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    goto :goto_25

    :cond_4b
    iget-object v4, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mPresumableLaunchDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->shouldPlaceSecondaryHomeOnDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v4

    if-nez v4, :cond_4c

    goto :goto_25

    :cond_4c
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mPresumableLaunchDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->resolveSecondaryHomeActivity(ILcom/android/server/wm/TaskDisplayArea;)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x1

    :goto_26
    or-int/2addr v2, v3

    if-eqz v2, :cond_4d

    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    iget v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    move/from16 p11, v3

    move/from16 p10, v4

    move-object/from16 p7, v5

    move-object/from16 p6, v6

    move/from16 p8, v7

    move/from16 p9, v8

    move-object/from16 p5, v9

    invoke-virtual/range {p5 .. p11}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v14, 0x0

    invoke-virtual {v6, v4, v3, v5, v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    :cond_4d
    :goto_27
    if-eqz v2, :cond_4e

    goto/16 :goto_13

    :cond_4e
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityInterceptorCallbacks:Landroid/util/SparseArray;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStartInterceptor;->getInterceptorInfo(Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    move-result-object v3

    const/4 v4, 0x0

    :goto_28
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_51

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityInterceptorCallback;

    invoke-interface {v5, v3}, Lcom/android/server/wm/ActivityInterceptorCallback;->onInterceptActivityLaunch(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;

    move-result-object v5

    if-nez v5, :cond_4f

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_4f
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->addCreatorToken(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->isActivityResolved()Z

    move-result v1

    if-eqz v1, :cond_50

    goto/16 :goto_17

    :cond_50
    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p5, v1

    move-object/from16 p6, v2

    move/from16 p8, v3

    move/from16 p10, v4

    move/from16 p11, v5

    move-object/from16 p7, v6

    move/from16 p9, v7

    invoke-virtual/range {p5 .. p11}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    const/4 v14, 0x0

    invoke-virtual {v2, v3, v1, v4, v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    :goto_29
    const/4 v6, 0x1

    return v6

    :cond_51
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    if-eqz v2, :cond_52

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_52

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->isResumedAffordanceAnimationRequested()Z

    move-result v2

    if-eqz v2, :cond_52

    const/4 v2, 0x1

    goto :goto_2a

    :cond_52
    const/4 v2, 0x0

    :goto_2a
    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_53

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->isStartedFromWindowTypeLauncher()Z

    move-result v3

    if-eqz v3, :cond_53

    const/4 v3, 0x1

    goto :goto_2b

    :cond_53
    const/4 v3, 0x0

    :goto_2b
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v4, :cond_54

    if-nez v3, :cond_54

    :goto_2c
    const/4 v0, 0x0

    :goto_2d
    const/4 v6, 0x1

    goto/16 :goto_3c

    :cond_54
    if-eqz v4, :cond_55

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_55

    if-nez v3, :cond_55

    goto :goto_2c

    :cond_55
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_56

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mIsAliasActivity:Z

    if-eqz v4, :cond_56

    goto :goto_2c

    :cond_56
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_74

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_74

    iget v4, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v4

    if-nez v4, :cond_57

    goto/16 :goto_39

    :cond_57
    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_58

    goto :goto_2c

    :cond_58
    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_59

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    goto :goto_2e

    :cond_59
    const/4 v5, 0x0

    :goto_2e
    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v6, :cond_5d

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_5a

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v7

    invoke-static {v7}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v6

    goto :goto_2f

    :cond_5a
    const/4 v6, 0x0

    :goto_2f
    iget-object v7, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->getLaunchTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_5b

    const/4 v7, 0x1

    goto :goto_30

    :cond_5b
    const/4 v7, 0x0

    :goto_30
    iget-object v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getForceLaunchWindowingMode()I

    move-result v8

    if-nez v8, :cond_5c

    iget-object v8, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v8

    :cond_5c
    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5e

    move v5, v9

    goto :goto_31

    :cond_5d
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_5e
    :goto_31
    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v10, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    if-nez v10, :cond_5f

    iget-object v10, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    :cond_5f
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v11

    if-eqz v11, :cond_61

    :cond_60
    :goto_32
    const/4 v1, 0x1

    goto :goto_33

    :cond_61
    if-nez v6, :cond_60

    if-ne v8, v1, :cond_62

    goto :goto_32

    :cond_62
    if-eqz v7, :cond_63

    goto :goto_32

    :cond_63
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v1

    if-nez v1, :cond_60

    iget-object v1, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v1}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v1

    if-eqz v1, :cond_64

    goto :goto_32

    :cond_64
    new-instance v1, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_65

    goto :goto_32

    :cond_65
    const/4 v1, 0x0

    :goto_33
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiInstanceController:Lcom/android/server/wm/MultiInstanceController;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v8, v11, v9, v7}, Lcom/android/server/wm/MultiInstanceController;->findAliasManagedTaskInPackage(ILjava/lang/String;Ljava/util/ArrayList;)V

    new-instance v8, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    if-eqz v2, :cond_69

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, 0x0

    :cond_66
    :goto_34
    if-ge v9, v2, :cond_69

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/server/wm/Task;

    invoke-virtual {v10}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v11

    if-eqz v11, :cond_67

    goto :goto_34

    :cond_67
    invoke-virtual {v10}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    move-result v11

    if-eqz v11, :cond_66

    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityStartInterceptor;->resolveLaunchTaskIdForAliasManagedTarget(Lcom/android/server/wm/Task;)V

    if-eqz v6, :cond_68

    iget-object v0, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/app/ActivityOptions;->setLaunchRootTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;

    :cond_68
    :goto_35
    const/4 v0, 0x1

    goto/16 :goto_2d

    :cond_69
    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_71

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_6a

    if-eqz v3, :cond_71

    :cond_6a
    const/4 v2, 0x0

    :goto_36
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6f

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v6

    if-eq v6, v5, :cond_6c

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_6b

    if-ne v5, v8, :cond_6e

    :cond_6b
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityStartInterceptor;->resolveLaunchTaskIdForAliasManagedTarget(Lcom/android/server/wm/Task;)V

    goto :goto_35

    :cond_6c
    const/4 v8, 0x2

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_6e

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v6

    if-eqz v6, :cond_6d

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityStartInterceptor;->resolveLaunchTaskIdForAliasManagedTarget(Lcom/android/server/wm/Task;)V

    goto :goto_35

    :cond_6d
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_6e
    const/4 v6, 0x1

    add-int/2addr v2, v6

    goto :goto_36

    :cond_6f
    const/4 v6, 0x1

    if-nez v1, :cond_73

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v6, :cond_70

    goto :goto_38

    :cond_70
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v6, :cond_73

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    const/4 v6, 0x1

    goto :goto_38

    :cond_71
    if-eqz v6, :cond_73

    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-virtual {v8, v6}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_72

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_37

    :cond_72
    const/4 v2, 0x0

    :goto_37
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_73

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStartInterceptor;->resolveLaunchTaskIdForAliasManagedTarget(Lcom/android/server/wm/Task;)V

    goto/16 :goto_35

    :cond_73
    const/4 v6, 0x0

    :goto_38
    if-nez v1, :cond_75

    if-eqz v6, :cond_74

    goto :goto_3a

    :cond_74
    :goto_39
    const/4 v6, 0x1

    goto :goto_3b

    :cond_75
    :goto_3a
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    move-object/from16 p6, v1

    move-object/from16 p7, v2

    move/from16 p8, v3

    move/from16 p11, v4

    move-object/from16 p5, v5

    move/from16 p9, v6

    move/from16 p10, v7

    invoke-virtual/range {p5 .. p11}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    move-object/from16 v2, p6

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    const/4 v14, 0x0

    invoke-virtual {v3, v2, v1, v4, v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v1, :cond_74

    if-eqz v3, :cond_74

    iput-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIsInterceptedForAliasActivity:Z

    move v0, v6

    goto :goto_3c

    :goto_3b
    const/4 v0, 0x0

    :goto_3c
    if-eqz v0, :cond_76

    :goto_3d
    return v6

    :cond_76
    const/16 v16, 0x0

    return v16

    :cond_77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Intent : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " intercepted for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const-string v3, " because quiet mode is enabled."

    invoke-static {v2, v3, v4, v1}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/high16 v2, 0x50000000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityStartInterceptor;->createIntentSenderForOriginalIntent(II)Landroid/content/IntentSender;

    move-result-object v1

    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {v2, v1, v3}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(ILandroid/content/IntentSender;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    iget v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    const/4 v14, 0x0

    iput-object v14, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iget v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingUid:I

    iget v5, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRealCallingPid:I

    iget-object v6, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v7, 0x0

    move/from16 p8, v1

    move-object/from16 p6, v2

    move-object/from16 p7, v3

    move/from16 p10, v4

    move/from16 p11, v5

    move-object/from16 p5, v6

    move/from16 p9, v7

    invoke-virtual/range {p5 .. p11}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget v3, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    iget-object v4, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v14, 0x0

    invoke-virtual {v4, v2, v1, v3, v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    goto/16 :goto_29
.end method

.method public final resolveLaunchTaskIdForAliasManagedTarget(Lcom/android/server/wm/Task;)V
    .locals 7

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setLaunchTaskIdForAliasManagedTarget(I)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mUserId:I

    const/16 v5, 0x3e8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    iget v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mStartFlags:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3, v1, p1, v0, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    :cond_0
    return-void
.end method
