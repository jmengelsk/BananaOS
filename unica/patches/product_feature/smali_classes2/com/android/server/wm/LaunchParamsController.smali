.class public final Lcom/android/server/wm/LaunchParamsController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mModifiers:Ljava/util/List;

.field public final mPersister:Lcom/android/server/wm/LaunchParamsPersister;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field public final mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field public final mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/LaunchParamsPersister;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mModifiers:Ljava/util/List;

    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p2, p0, Lcom/android/server/wm/LaunchParamsController;->mPersister:Lcom/android/server/wm/LaunchParamsPersister;

    return-void
.end method


# virtual methods
.method public final calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .locals 14

    move-object/from16 v3, p3

    move-object/from16 v10, p8

    invoke-virtual {v10}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    if-nez p1, :cond_0

    if-eqz v3, :cond_d

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    :goto_0
    if-eqz p1, :cond_2

    iget v4, p1, Lcom/android/server/wm/Task;->mUserId:I

    goto :goto_1

    :cond_2
    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/server/wm/LaunchParamsPersister;->waitAndMoveResultIfLoading(I)V

    if-eqz p1, :cond_3

    iget-object v5, p1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez v5, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    iget-object v5, v5, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    :goto_2
    invoke-virtual {v10}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    iget-object v6, v0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    if-eqz v5, :cond_9

    iget-object v6, v0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, v0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    if-nez v7, :cond_6

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    iget-wide v8, v7, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    iget-wide v11, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    cmp-long v8, v8, v11

    if-lez v8, :cond_8

    :cond_7
    move-object v2, v7

    :cond_8
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(Ljava/lang/String;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    :cond_b
    iget v0, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    iput v0, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    iget-object v0, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v4, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mOrientation:I

    iput v0, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mOrientation:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    if-eqz v0, :cond_c

    iget v0, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayDeviceType:I

    iput v0, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDisplayDeviceType:I

    :cond_c
    iget-object v0, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParam:Lcom/android/server/wm/FreeformPersistBoundsParams;

    iget-object v4, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/FreeformPersistBoundsParams;->set(Lcom/android/server/wm/FreeformPersistBoundsParams;)V

    iget-object v0, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDwPersistBounds:Lcom/android/server/wm/LastDwBounds;

    iget-object v2, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDwBounds:Lcom/android/server/wm/LastDwBounds;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/LastDwBounds;->set(Lcom/android/server/wm/LastDwBounds;)V

    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mModifiers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v11, 0x1

    sub-int/2addr v0, v11

    move v12, v0

    :goto_6
    if-ltz v12, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    iget-object v13, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v13}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mModifiers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;

    iget-object v8, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v9, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v9}, Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;->onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result v0

    if-eq v0, v11, :cond_f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {v10, v13}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->merge(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    :goto_7
    add-int/lit8 v12, v12, -0x1

    goto :goto_6

    :cond_f
    invoke-virtual {v10, v13}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->merge(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    return-void

    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v3, :cond_11

    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    iput-object p0, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    return-void

    :cond_11
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    iput-object p0, v10, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    :cond_12
    return-void
.end method

.method public final layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;I)Z
    .locals 10

    iget-object v9, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move/from16 v2, p6

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    :cond_0
    iget-object v8, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    const/4 v0, 0x1

    return v0

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return v3

    :goto_2
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw v0

    :cond_5
    :goto_3
    return v3
.end method
