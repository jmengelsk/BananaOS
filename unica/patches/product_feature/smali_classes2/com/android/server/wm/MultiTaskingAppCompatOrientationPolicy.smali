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
    .registers 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LANDSCAPE_VIEW_FOR_PORTRAIT_APPS:Z

    sput-boolean v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->SUPPORTS_MULTI_STAR:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;)V
    .registers 3

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
    .registers 2

    if-eqz p0, :cond_28

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHasSetIgnoreOrientationRequest:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isIgnoreOrientationRequestDisabled()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_28

    :cond_f
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_14

    goto :goto_28

    :cond_14
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LANDSCAPE_VIEW_FOR_PORTRAIT_APPS:Z

    if-nez v0, :cond_26

    sget-boolean v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->SUPPORTS_MULTI_STAR:Z

    if-eqz v0, :cond_28

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mShouldApplyIgnoreOrientationRequestDueToMultiStar:Z

    if-eqz p0, :cond_28

    :cond_26
    const/4 p0, 0x1

    return p0

    :cond_28
    :goto_28
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldCameraCompatEnabled(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

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

    if-nez v0, :cond_20

    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p0, 0x0

    return p0

    :cond_20
    :goto_20
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final onOverridesChangedIfNeededInTask(Lcom/android/server/wm/Task;Z)V
    .registers 10

    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_d

    goto :goto_3d

    :cond_d
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

    if-eqz v4, :cond_2b

    const/4 v0, -0x1

    goto :goto_2f

    :cond_2b
    invoke-virtual {v3, v1, v0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->getUserOrSystemOverride(ILjava/lang/String;)I

    move-result v0

    :goto_2f
    iput v0, p1, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    if-eqz p2, :cond_3d

    if-eq v2, v0, :cond_3d

    new-instance p2, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;)V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public final requestActivityBoundsChangedTransitionIfNeeded(Lcom/android/server/wm/ActivityRecord;Ljava/lang/Runnable;)V
    .registers 10

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-nez v0, :cond_6

    goto/16 :goto_85

    :cond_6
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

    if-nez p2, :cond_85

    if-nez v0, :cond_2a

    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p2

    if-eqz p2, :cond_85

    :cond_2a
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    iget-object v4, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_85

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    move-result p2

    if-eqz p2, :cond_3e

    goto :goto_85

    :cond_3e
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ChangeTransitionController;->findCollectingChangeInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition$ChangeInfo;

    move-result-object p2

    if-eqz p2, :cond_49

    iget-object p2, p2, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    if-eqz p2, :cond_49

    goto :goto_85

    :cond_49
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ChangeTransitionController;->findCollectingChangeInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition$ChangeInfo;

    move-result-object p2

    if-eqz p2, :cond_56

    invoke-virtual {p2}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result p2

    if-eqz p2, :cond_56

    goto :goto_85

    :cond_56
    iget-object p2, v0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p2}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result p2

    const/4 v6, 0x0

    if-nez p2, :cond_68

    iget-object p2, v0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p2, v2, v1}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object p2

    goto :goto_69

    :cond_68
    move-object p2, v6

    :goto_69
    iget-object v1, v0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ChangeTransitionController;->updateChangeInfo(Lcom/android/server/wm/WindowContainer;IILandroid/graphics/Rect;I)V

    iget-object p1, v0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    if-eqz p2, :cond_85

    iget-object p1, v0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, p2, p0, v6, v6}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_85
    :goto_85
    return-void
.end method

.method public final shouldCreateAppCompatDisplayInsetsForRotationCompat(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 13

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->shouldIgnoreOrientationRequest(ILcom/android/server/wm/WindowContainer;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mRotationCompatPolicy:I

    const/4 v3, 0x3

    if-nez v0, :cond_13

    goto/16 :goto_117

    :cond_13
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_1c

    :cond_19
    move v3, v2

    goto/16 :goto_117

    :cond_1c
    iget v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mRotationCompatPolicy:I

    if-ne v0, v1, :cond_23

    :goto_20
    move v3, v1

    goto/16 :goto_117

    :cond_23
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    monitor-enter p0

    :try_start_28
    iget-object v4, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->mTabletRotationCompatList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    if-eqz v4, :cond_34

    invoke-virtual {v4, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    move v4, v1

    goto :goto_35

    :cond_34
    move v4, v2

    :goto_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_114

    if-eqz v4, :cond_39

    goto :goto_20

    :cond_39
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

    if-eqz v5, :cond_55

    :goto_52
    move v3, v2

    goto/16 :goto_fe

    :cond_55
    monitor-enter v4

    :try_start_56
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

    if-eqz v6, :cond_78

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v4

    goto :goto_cc

    :catchall_75
    move-exception p0

    goto/16 :goto_112

    :cond_78
    monitor-exit v4
    :try_end_79
    .catchall {:try_start_56 .. :try_end_79} :catchall_75

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_7d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    const-wide/16 v9, 0x80

    invoke-interface {v8, v0, v9, v10, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_87} :catch_a0
    .catchall {:try_start_7d .. :try_end_87} :catchall_9d

    if-nez p0, :cond_8e

    :goto_89
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move p0, v2

    goto :goto_cc

    :cond_8e
    :try_start_8e
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_a2

    const-string/jumbo v8, "android.supports_size_changes"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a2

    move p0, v1

    goto :goto_a3

    :catchall_9d
    move-exception p0

    goto/16 :goto_10e

    :catch_a0
    move-exception p0

    goto :goto_b3

    :cond_a2
    move p0, v2

    :goto_a3
    monitor-enter v4
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_a4} :catch_a0
    .catchall {:try_start_8e .. :try_end_a4} :catchall_9d

    :try_start_a4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_ac
    .catchall {:try_start_a4 .. :try_end_ac} :catchall_b0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_cc

    :catchall_b0
    move-exception p0

    :try_start_b1
    monitor-exit v4
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    :try_start_b2
    throw p0
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_b3} :catch_a0
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_9d

    :goto_b3
    :try_start_b3
    const-string/jumbo v5, "MultiTaskingAppCompat"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getApplicationInfo failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cb
    .catchall {:try_start_b3 .. :try_end_cb} :catchall_9d

    goto :goto_89

    :goto_cc
    const/4 v5, 0x2

    if-eqz p0, :cond_d1

    move v3, v5

    goto :goto_fe

    :cond_d1
    monitor-enter v4

    :try_start_d2
    monitor-exit v4
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_10b

    monitor-enter v4

    :try_start_d4
    iget-object p0, v4, Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;->mForceNonResizeAppList:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v6, 0x4

    if-eqz p0, :cond_e4

    monitor-exit v4

    move p0, v6

    goto :goto_f3

    :catchall_e2
    move-exception p0

    goto :goto_109

    :cond_e4
    iget-object p0, v4, Lcom/android/server/wm/MultiTaskingAppCompatResizeOverrides;->mForceResizeAppList:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f1

    monitor-exit v4

    move p0, v3

    goto :goto_f3

    :cond_f1
    monitor-exit v4
    :try_end_f2
    .catchall {:try_start_d4 .. :try_end_f2} :catchall_e2

    move p0, v2

    :goto_f3
    if-eq p0, v1, :cond_fe

    if-eq p0, v5, :cond_fd

    if-eq p0, v3, :cond_fe

    if-eq p0, v6, :cond_fd

    goto/16 :goto_52

    :cond_fd
    move v3, v1

    :cond_fe
    :goto_fe
    if-eqz v3, :cond_101

    goto :goto_117

    :cond_101
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_20

    :goto_109
    :try_start_109
    monitor-exit v4
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_e2

    throw p0

    :catchall_10b
    move-exception p0

    :try_start_10c
    monitor-exit v4
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10b

    throw p0

    :goto_10e
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_112
    :try_start_112
    monitor-exit v4
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_75

    throw p0

    :catchall_114
    move-exception p1

    :try_start_115
    monitor-exit p0
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_114

    throw p1

    :goto_117
    if-ne v3, v1, :cond_11a

    goto :goto_11b

    :cond_11a
    move v1, v2

    :goto_11b
    return v1
.end method

.method public final shouldIgnoreOrientationRequest(ILcom/android/server/wm/WindowContainer;Z)Z
    .registers 8

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    :goto_8
    const/16 v0, 0xe

    const/4 v1, 0x0

    if-ne p1, v0, :cond_f

    goto/16 :goto_97

    :cond_f
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p1

    sget-boolean v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->SUPPORTS_MULTI_STAR:Z

    if-eqz p1, :cond_27

    if-eqz v0, :cond_1d

    iget-boolean p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mShouldIgnoreLandscapeRequestDueToMultiStar:Z

    if-nez p1, :cond_27

    :cond_1d
    if-eqz p2, :cond_97

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result p1

    if-nez p1, :cond_27

    goto/16 :goto_97

    :cond_27
    invoke-static {p2}, Lcom/android/server/wm/MultiTaskingAppCompatController;->supportsAppCompatOverride(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_97

    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_97

    iget-object p1, p2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p1, :cond_97

    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p1, p1, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object p1, p1, Lcom/android/server/wm/AppCompatOverrides;->mResizeOverrides:Lcom/android/server/wm/AppCompatResizeOverrides;

    iget-object p1, p1, Lcom/android/server/wm/AppCompatResizeOverrides;->mAllowRestrictedResizability:Lcom/android/server/wm/AppCompatUtils$1;

    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatUtils$1;->getAsBoolean()Z

    move-result p1

    if-nez p1, :cond_97

    iget-object p1, p2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->shouldApplyPolicy(Lcom/android/server/wm/DisplayContent;)Z

    move-result p1

    if-eqz p1, :cond_97

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-nez p1, :cond_97

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result p1

    if-eqz p1, :cond_56

    goto :goto_97

    :cond_56
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-eqz p1, :cond_97

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_68

    goto :goto_97

    :cond_68
    invoke-static {p2}, Lcom/android/server/wm/MultiTaskingAppCompatController;->inAllowedWindowingMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-nez p1, :cond_6f

    goto :goto_97

    :cond_6f
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget p1, p1, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    const/4 v3, -0x1

    if-eq p1, v3, :cond_8a

    if-eqz p1, :cond_8a

    const/16 v3, 0x20

    if-ne p1, v3, :cond_7d

    goto :goto_8a

    :cond_7d
    if-eqz v0, :cond_96

    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mShouldApplyIgnoreOrientationRequestDueToMultiStar:Z

    if-eqz p0, :cond_96

    if-eqz p3, :cond_96

    const/4 p0, 0x7

    if-ne p1, p0, :cond_89

    return v1

    :cond_89
    return v2

    :cond_8a
    :goto_8a
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_MULTI_FOLD_CAMERA_POLICY:Z

    if-eqz p1, :cond_97

    iget-boolean p1, p2, Lcom/android/server/wm/ActivityRecord;->mIsCameraCompatEnabled:Z

    if-nez p1, :cond_96

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->mCameraCompatCandidate:Lcom/android/server/wm/ActivityRecord;

    if-ne p2, p0, :cond_97

    :cond_96
    return v2

    :cond_97
    :goto_97
    return v1
.end method
