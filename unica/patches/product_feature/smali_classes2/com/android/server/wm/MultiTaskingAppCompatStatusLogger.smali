.class public final Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public final collectAndSendStatus()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;

    new-instance v3, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v1, v3}, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;-><init>(Landroid/content/Context;Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$$ExternalSyntheticLambda0;)V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    if-eqz v3, :cond_1

    new-instance v3, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;I)V

    iget-object v4, v2, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;->mOverrideToSettingsIdList:Ljava/util/List;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;->mOverrideToSettingsIdList:Ljava/util/List;

    :cond_0
    iget-object v4, v2, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;->mOverrideToSettingsIdList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    if-eqz v3, :cond_3

    new-instance v3, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;I)V

    iget-object v4, v2, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;->mOverrideToSettingsIdList:Ljava/util/List;

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;->mOverrideToSettingsIdList:Ljava/util/List;

    :cond_2
    iget-object v4, v2, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;->mOverrideToSettingsIdList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mReachabilityPolicy:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;

    iget v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAlignment:I

    and-int/lit8 v3, v0, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    const-string/jumbo v3, "Left"

    goto :goto_0

    :cond_4
    and-int/lit8 v3, v0, 0x5

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    const-string/jumbo v3, "Right"

    goto :goto_0

    :cond_5
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    const-string v3, "Center"

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_0
    const-string v4, "519305"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;->addStatus(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v3, v0, 0x30

    const/16 v4, 0x30

    if-ne v3, v4, :cond_7

    const-string/jumbo v0, "Top"

    goto :goto_1

    :cond_7
    and-int/lit8 v3, v0, 0x50

    const/16 v4, 0x50

    if-ne v3, v4, :cond_8

    const-string v0, "Bottom"

    goto :goto_1

    :cond_8
    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_9

    const-string v0, "Center"

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    :goto_1
    const-string v3, "519306"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;->addStatus(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;->mOverrideToSettingsIdList:Ljava/util/List;

    if-nez v0, :cond_a

    goto/16 :goto_b

    :cond_a
    sget-object v3, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    monitor-enter v3

    :try_start_0
    iget-object v0, v3, Lcom/android/server/wm/CompatChangeableAppsCache;->mAppsArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_b
    const/4 v0, 0x0

    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_c

    goto/16 :goto_b

    :cond_c
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_19

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    if-eq v7, v1, :cond_e

    :cond_d
    move-object/from16 v16, v0

    move/from16 v17, v1

    goto/16 :goto_a

    :cond_e
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/core/CompatChangeableApps;

    new-instance v9, Ljava/util/HashSet;

    invoke-virtual {v8}, Lcom/samsung/android/core/CompatChangeableApps;->getCompatChangeablePackageNameList()Ljava/util/List;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :cond_f
    :goto_4
    if-ge v10, v9, :cond_d

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/samsung/android/core/CompatChangeableApps;->isSamsungPackage(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_4

    :cond_10
    iget-object v12, v2, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;->mOverrideToSettingsIdList:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_f

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$$ExternalSyntheticLambda1;

    iget v4, v15, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v4, :pswitch_data_0

    iget-object v4, v15, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;

    iget-object v4, v4, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v4, v4, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationOverrides:Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;

    const/4 v15, 0x3

    invoke-static {v7, v15}, Lcom/android/server/wm/MultiTaskingAppCompatUtils;->getAdjustedUserId(II)I

    move-result v15

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v11, :cond_13

    sget-object v5, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    move-object/from16 v16, v0

    new-instance v0, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;

    move/from16 v17, v1

    const/4 v1, 0x0

    invoke-direct {v0, v11, v1}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v0, v15}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {v4, v15, v11}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationOverrides;->getUserOrSystemOverride(ILjava/lang/String;)I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_12

    const-string v0, "LVPA01"

    goto :goto_7

    :cond_12
    const/4 v1, 0x7

    if-ne v0, v1, :cond_14

    const-string v0, "LVPA02"

    goto :goto_7

    :cond_13
    move-object/from16 v16, v0

    move/from16 v17, v1

    :cond_14
    :goto_6
    const/4 v0, 0x0

    goto :goto_7

    :pswitch_0
    move-object/from16 v16, v0

    move/from16 v17, v1

    iget-object v0, v15, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;

    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAspectRatioOverrides:Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    invoke-virtual {v1, v7, v11}, Lcom/android/server/wm/CompatChangeableAppsCache;->shouldRespectMinAspectRatioOverride(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_6

    :cond_15
    invoke-virtual {v0, v7, v11}, Lcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides;->getUserOrSystemMinAspectRatio(ILjava/lang/String;)F

    move-result v0

    const v1, 0x3fe38e39

    cmpl-float v1, v0, v1

    if-nez v1, :cond_16

    const-string v0, "519402"

    goto :goto_7

    :cond_16
    const v1, 0x3faaaaab

    cmpl-float v0, v0, v1

    if-nez v0, :cond_14

    const-string v0, "519403"

    :goto_7
    if-eqz v0, :cond_17

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_17
    const/4 v1, 0x0

    :goto_8
    if-nez v1, :cond_18

    :goto_9
    move-object/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_5

    :cond_18
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;->addStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_3

    :cond_19
    :goto_b
    iget-object v0, v2, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;->mSettings:Ljava/util/HashMap;

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, v2, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;->mSettings:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_1b
    iget-object v1, v2, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;->mSender:Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    return-void

    :goto_d
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
