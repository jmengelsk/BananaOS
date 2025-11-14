.class public final Lcom/android/server/pm/UserJourneyLogger;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mUserIdToUserJourneyMap:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    return-void
.end method

.method public static getUserJourneyKey(II)I
    .locals 0

    mul-int/lit8 p0, p0, 0x64

    add-int/2addr p0, p1

    return p0
.end method

.method public static getUserTypeForStatsd(Ljava/lang/String;)I
    .locals 11

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v10, "android.os.usertype.profile.CLONE"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    move v9, v0

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v10, "android.os.usertype.full.DEMO"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    move v9, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v10, "android.os.usertype.full.RESTRICTED"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v9, v2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v10, "android.os.usertype.full.SECONDARY"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v9, v3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v10, "android.os.usertype.full.SYSTEM"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v9, v4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v10, "android.os.usertype.system.HEADLESS"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v9, v5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v10, "android.os.usertype.profile.MANAGED"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v9, v6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v10, "android.os.usertype.full.GUEST"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    move v9, v7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v10, "android.os.usertype.profile.PRIVATE"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    move v9, v8

    :goto_0
    packed-switch v9, :pswitch_data_0

    return v8

    :pswitch_0
    return v0

    :pswitch_1
    return v4

    :pswitch_2
    return v3

    :pswitch_3
    return v6

    :pswitch_4
    return v7

    :pswitch_5
    return v1

    :pswitch_6
    return v2

    :pswitch_7
    return v5

    :pswitch_8
    const/16 p0, 0x9

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x4e0e8e80 -> :sswitch_8
        -0x41cc9709 -> :sswitch_7
        -0x986a464 -> :sswitch_6
        0x206d3ba -> :sswitch_5
        0x1cf29ad0 -> :sswitch_4
        0x3825fd13 -> :sswitch_3
        0x65fcf07c -> :sswitch_2
        0x6939dec4 -> :sswitch_1
        0x7534089a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static journeyToEvent(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/16 p0, 0x9

    return p0

    :pswitch_2
    const/16 p0, 0x8

    return p0

    :pswitch_3
    const/4 p0, 0x7

    return p0

    :pswitch_4
    const/4 p0, 0x3

    return p0

    :pswitch_5
    const/4 p0, 0x2

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public finishAndClearIncompleteUserJourney(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .locals 11

    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    if-eqz v4, :cond_0

    iget v2, v4, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mJourney:I

    invoke-static {v2}, Lcom/android/server/pm/UserJourneyLogger;->journeyToEvent(I)I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x2

    move-object v3, p0

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x2

    move v7, v5

    move v5, p2

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleJourneyReported(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIIIII)V

    iget-object p0, v3, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-object v4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final logDelayedUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;I)V
    .locals 10

    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p2, Landroid/content/pm/UserInfo;->id:I

    const/16 v4, 0x9

    invoke-static {v0, v4}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    if-eqz v3, :cond_0

    iget v6, p2, Landroid/content/pm/UserInfo;->id:I

    iget-object v2, p2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v7

    iget v8, p2, Landroid/content/pm/UserInfo;->flags:I

    move-object v2, p0

    move v5, p1

    move v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleJourneyReported(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIIIII)V

    iget-object p0, v2, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final logNullUserJourneyError(IIIILjava/lang/String;)V
    .locals 10

    iget-object v8, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-static {p3, p1}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v9

    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    invoke-static {p1}, Lcom/android/server/pm/UserJourneyLogger;->journeyToEvent(I)I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x4

    move-object v0, p0

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V

    invoke-static {p5}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x4

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleJourneyReported(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIIIII)V

    iget-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .locals 10

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide/16 v1, 0x1

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v3

    new-instance v5, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    invoke-direct {v5, v0, v1, p2}, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;-><init>(JI)V

    iget-object p2, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {p2, v3, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget p2, v5, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mJourney:I

    invoke-static {p2}, Lcom/android/server/pm/UserJourneyLogger;->journeyToEvent(I)I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, -0x1

    move-object v4, p0

    move v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V

    monitor-exit v2

    return-object v5

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .locals 10

    iget-object v8, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v8

    const/4 v1, -0x1

    if-eq p4, v1, :cond_1

    const/4 v1, 0x3

    if-eq p4, v1, :cond_0

    const/4 v1, 0x4

    :cond_0
    :goto_0
    move v4, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :goto_1
    :try_start_0
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, p3}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v9

    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    if-eqz v1, :cond_2

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    iget v3, v1, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mJourney:I

    invoke-static {v3}, Lcom/android/server/pm/UserJourneyLogger;->journeyToEvent(I)I

    move-result v3

    move-object v0, p0

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V

    iget v4, p2, Landroid/content/pm/UserInfo;->id:I

    iget-object v0, p2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v5

    iget v6, p2, Landroid/content/pm/UserInfo;->flags:I

    move-object v0, p0

    move v3, p1

    move v2, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleJourneyReported(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIIIII)V

    iget-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v8

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    monitor-exit v8

    const/4 v0, 0x0

    return-object v0

    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final logUserLifecycleEvent(III)V
    .locals 7

    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    div-int/lit8 v4, v3, 0x64

    if-ne v4, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    monitor-exit v1

    :goto_1
    move-object v2, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    const/4 v6, -0x1

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V
    .locals 14

    if-nez p1, :cond_0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-wide/16 v1, -0x1

    move-object v0, p0

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/UserJourneyLogger;->writeUserLifecycleEventOccurred(JIIII)V

    return-void

    :cond_0
    iget-wide v8, p1, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mSessionId:J

    move-object v7, p0

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/pm/UserJourneyLogger;->writeUserLifecycleEventOccurred(JIIII)V

    return-void
.end method

.method public logUserLifecycleJourneyReported(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIIIII)V
    .locals 22

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/UserJourneyLogger;->writeUserLifecycleJourneyReported(JIIIIIIJ)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mStartTimeInMills:J

    sub-long v20, v1, v3

    iget-wide v12, v0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mSessionId:J

    move-object/from16 v11, p0

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    invoke-virtual/range {v11 .. v21}, Lcom/android/server/pm/UserJourneyLogger;->writeUserLifecycleJourneyReported(JIIIIIIJ)V

    return-void
.end method

.method public logUserSwitchJourneyFinish(ILandroid/content/pm/UserInfo;)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v1

    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v3

    iget-object v5, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    const/4 v5, -0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, v2, v5}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public writeUserLifecycleEventOccurred(JIIII)V
    .locals 0

    const/16 p0, 0x109

    invoke-static/range {p0 .. p6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIIII)V

    return-void
.end method

.method public writeUserLifecycleJourneyReported(JIIIIIIJ)V
    .locals 0

    const/16 p0, 0x108

    invoke-static/range {p0 .. p10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIIIIIIJ)V

    return-void
.end method
