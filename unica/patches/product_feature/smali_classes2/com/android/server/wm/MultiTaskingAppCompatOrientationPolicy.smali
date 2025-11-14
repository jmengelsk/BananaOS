.class public final Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final SUPPORTS_MULTI_STAR:Z


# instance fields
.field public mCameraCompatCandidate:Lcom/android/server/wm/ActivityRecord;

.field public final mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

.field public final mRotationCompatPolicy:I

.field public mShouldApplyIgnoreOrientationRequestDueToMultiStar:Z

.field public mShouldIgnoreLandscapeRequestDueToMultiStar:Z

.field public final mTmpPrevBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LANDSCAPE_VIEW_FOR_PORTRAIT_APPS:Z

    sput-boolean v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->SUPPORTS_MULTI_STAR:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mTmpPrevBounds:Landroid/graphics/Rect;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mRotationCompatPolicy:I

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    new-instance p1, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$1;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;)V

    sget-object v0, Lcom/android/server/wm/PackagesChange;->sDumpCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$2;

    invoke-direct {p1, p0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$2;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;)V

    sget-object p0, Lcom/android/server/wm/PackagesChange;->sTaskChangeCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static shouldApplyPolicy(Lcom/android/server/wm/DisplayContent;)Z
    .locals 1

    if-eqz p0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHasSetIgnoreOrientationRequest:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isIgnoreOrientationRequestDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LANDSCAPE_VIEW_FOR_PORTRAIT_APPS:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->SUPPORTS_MULTI_STAR:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mShouldApplyIgnoreOrientationRequestDueToMultiStar:Z

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldCameraCompatEnabled(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatOverrides;->mOrientationOverrides:Lcom/android/server/wm/AppCompatOrientationOverrides;

    iget-object v1, v0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v2, 0xf4156bc

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result v1

    iget-object v0, v0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mAllowDisplayOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final onOverridesChangedIfNeededInTask(Lcom/android/server/wm/Task;Z)V
    .locals 7

    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/server/wm/MultiTaskingAppCompatUtils;->getAdjustedUserId(II)I

    move-result v1

    iget v2, p1, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    new-instance v5, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5, v1}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v1, v0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->getUserOrSystemOverride(ILjava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p1, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    if-eqz p2, :cond_3

    if-eq v2, v0, :cond_3

    new-instance p2, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;)V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final requestActivityBoundsChangedTransitionIfNeeded(Lcom/android/server/wm/ActivityRecord;Ljava/lang/Runnable;)V
    .locals 7

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_1
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    iget-object v4, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ChangeTransitionController;->findCollectingChangeInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition$ChangeInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ChangeTransitionController;->findCollectingChangeInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition$ChangeInfo;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    iget-object p2, v0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p2}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result p2

    const/4 v6, 0x0

    if-nez p2, :cond_5

    iget-object p2, v0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p2, v2, v1}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object p2

    goto :goto_0

    :cond_5
    move-object p2, v6

    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ChangeTransitionController;->updateChangeInfo(Lcom/android/server/wm/WindowContainer;IILandroid/graphics/Rect;I)V

    iget-object p1, v0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    if-eqz p2, :cond_6

    iget-object p1, v0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, p2, p0, v6, v6}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final shouldCreateAppCompatDisplayInsetsForRotationCompat(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 11

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->shouldIgnoreOrientationRequest(ILcom/android/server/wm/WindowContainer;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mRotationCompatPolicy:I

    const/4 v3, 0x3

    if-nez v0, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v3, v2

    goto/16 :goto_c

    :cond_2
    iget v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mRotationCompatPolicy:I

    if-ne v0, v1, :cond_3

    :goto_0
    move v3, v1

    goto/16 :goto_c

    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mTabletRotationCompatList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v1

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v4, v4, Lcom/android/server/wm/MultiTaskingAppCompatController;->mResizeOverrides:Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    new-instance v6, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    const/4 v7, 0x4

    invoke-direct {v6, v0, v7}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v6, p0}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_2
    move v3, v2

    goto/16 :goto_8

    :cond_6
    monitor-enter v4

    :try_start_1
    iget-object v5, v4, Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;->mMetaDataCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v4

    goto :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_b

    :cond_7
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    const-wide/16 v9, 0x80

    invoke-interface {v8, v0, v9, v10, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p0, :cond_8

    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move p0, v2

    goto :goto_6

    :cond_8
    :try_start_3
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_9

    const-string/jumbo v8, "android.supports_size_changes"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    move p0, v1

    goto :goto_4

    :catchall_1
    move-exception p0

    goto/16 :goto_a

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_9
    move p0, v2

    :goto_4
    monitor-enter v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    :try_start_7
    const-string/jumbo v5, "MultiTaskingAppCompat"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getApplicationInfo failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :goto_6
    const/4 v5, 0x2

    if-eqz p0, :cond_a

    move v3, v5

    goto :goto_8

    :cond_a
    monitor-enter v4

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    monitor-enter v4

    :try_start_9
    iget-object p0, v4, Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;->mForceNonResizeAppList:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v6, 0x4

    if-eqz p0, :cond_b

    monitor-exit v4

    move p0, v6

    goto :goto_7

    :catchall_3
    move-exception p0

    goto :goto_9

    :cond_b
    iget-object p0, v4, Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;->mForceResizeAppList:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    monitor-exit v4

    move p0, v3

    goto :goto_7

    :cond_c
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move p0, v2

    :goto_7
    if-eq p0, v1, :cond_e

    if-eq p0, v5, :cond_d

    if-eq p0, v3, :cond_e

    if-eq p0, v6, :cond_d

    goto/16 :goto_2

    :cond_d
    move v3, v1

    :cond_e
    :goto_8
    if-eqz v3, :cond_f

    goto :goto_c

    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :goto_9
    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p0

    :goto_a
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_b
    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw p0

    :catchall_5
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw p1

    :goto_c
    if-ne v3, v1, :cond_10

    goto :goto_d

    :cond_10
    move v1, v2

    :goto_d
    return v1
.end method

.method public final shouldIgnoreOrientationRequest(ILcom/android/server/wm/WindowContainer;Z)Z
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/16 v0, 0xe

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p1

    sget-boolean v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->SUPPORTS_MULTI_STAR:Z

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mShouldIgnoreLandscapeRequestDueToMultiStar:Z

    if-nez p1, :cond_3

    :cond_2
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-static {p2}, Lcom/android/server/wm/MultiTaskingAppCompatController;->supportsAppCompatOverride(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_b

    iget-object p1, p2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p1, :cond_b

    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p1, p1, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object p1, p1, Lcom/android/server/wm/AppCompatOverrides;->mResizeOverrides:Lcom/android/server/wm/AppCompatResizeOverrides;

    iget-object p1, p1, Lcom/android/server/wm/AppCompatResizeOverrides;->mAllowRestrictedResizability:Lcom/android/server/wm/AppCompatUtils$1;

    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatUtils$1;->getAsBoolean()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->shouldApplyPolicy(Lcom/android/server/wm/DisplayContent;)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-nez p1, :cond_b

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p2}, Lcom/android/server/wm/MultiTaskingAppCompatController;->inAllowedWindowingMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget p1, p1, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    const/4 v3, -0x1

    if-eq p1, v3, :cond_9

    if-eqz p1, :cond_9

    const/16 v3, 0x20

    if-ne p1, v3, :cond_7

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mShouldApplyIgnoreOrientationRequestDueToMultiStar:Z

    if-eqz p0, :cond_a

    if-eqz p3, :cond_a

    const/4 p0, 0x7

    if-ne p1, p0, :cond_8

    return v1

    :cond_8
    return v2

    :cond_9
    :goto_1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_MULTI_FOLD_CAMERA_POLICY:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p2, Lcom/android/server/wm/ActivityRecord;->mIsCameraCompatEnabled:Z

    if-nez p1, :cond_a

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mCameraCompatCandidate:Lcom/android/server/wm/ActivityRecord;

    if-ne p2, p0, :cond_b

    :cond_a
    return v2

    :cond_b
    :goto_2
    return v1
.end method
