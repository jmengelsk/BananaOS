.class public final Lcom/android/server/pm/UserJourneyLogger;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mUserIdToUserJourneyMap:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .registers 2

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
    .registers 2

    mul-int/lit8 p0, p0, 0x64

    add-int/2addr p0, p1

    return p0
.end method

.method public static getUserTypeForStatsd(Ljava/lang/String;)I
    .registers 12

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

    sparse-switch v10, :sswitch_data_94

    goto/16 :goto_85

    :sswitch_17
    const-string/jumbo v10, "android.os.usertype.profile.CLONE"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_85

    :cond_22
    move v9, v0

    goto/16 :goto_85

    :sswitch_25
    const-string/jumbo v10, "android.os.usertype.full.DEMO"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto/16 :goto_85

    :cond_30
    move v9, v1

    goto :goto_85

    :sswitch_32
    const-string/jumbo v10, "android.os.usertype.full.RESTRICTED"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto :goto_85

    :cond_3c
    move v9, v2

    goto :goto_85

    :sswitch_3e
    const-string/jumbo v10, "android.os.usertype.full.SECONDARY"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    goto :goto_85

    :cond_48
    move v9, v3

    goto :goto_85

    :sswitch_4a
    const-string/jumbo v10, "android.os.usertype.full.SYSTEM"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_54

    goto :goto_85

    :cond_54
    move v9, v4

    goto :goto_85

    :sswitch_56
    const-string/jumbo v10, "android.os.usertype.system.HEADLESS"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_60

    goto :goto_85

    :cond_60
    move v9, v5

    goto :goto_85

    :sswitch_62
    const-string/jumbo v10, "android.os.usertype.profile.MANAGED"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6c

    goto :goto_85

    :cond_6c
    move v9, v6

    goto :goto_85

    :sswitch_6e
    const-string/jumbo v10, "android.os.usertype.full.GUEST"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_78

    goto :goto_85

    :cond_78
    move v9, v7

    goto :goto_85

    :sswitch_7a
    const-string/jumbo v10, "android.os.usertype.profile.PRIVATE"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_84

    goto :goto_85

    :cond_84
    move v9, v8

    :goto_85
    packed-switch v9, :pswitch_data_ba

    return v8

    :pswitch_89  #0x8
    return v0

    :pswitch_8a  #0x7
    return v4

    :pswitch_8b  #0x6
    return v3

    :pswitch_8c  #0x5
    return v6

    :pswitch_8d  #0x4
    return v7

    :pswitch_8e  #0x3
    return v1

    :pswitch_8f  #0x2
    return v2

    :pswitch_90  #0x1
    return v5

    :pswitch_91  #0x0
    const/16 p0, 0x9

    return p0

    :sswitch_data_94
    .sparse-switch
        -0x4e0e8e80 -> :sswitch_7a
        -0x41cc9709 -> :sswitch_6e
        -0x986a464 -> :sswitch_62
        0x206d3ba -> :sswitch_56
        0x1cf29ad0 -> :sswitch_4a
        0x3825fd13 -> :sswitch_3e
        0x65fcf07c -> :sswitch_32
        0x6939dec4 -> :sswitch_25
        0x7534089a -> :sswitch_17
    .end sparse-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_91  #00000000
        :pswitch_90  #00000001
        :pswitch_8f  #00000002
        :pswitch_8e  #00000003
        :pswitch_8d  #00000004
        :pswitch_8c  #00000005
        :pswitch_8b  #00000006
        :pswitch_8a  #00000007
        :pswitch_89  #00000008
    .end packed-switch
.end method

.method public static journeyToEvent(I)I
    .registers 1

    packed-switch p0, :pswitch_data_16

    const/4 p0, 0x0

    return p0

    :pswitch_5  #0x8
    const/16 p0, 0xa

    return p0

    :pswitch_8  #0x7
    const/16 p0, 0x9

    return p0

    :pswitch_b  #0x6
    const/16 p0, 0x8

    return p0

    :pswitch_e  #0x5
    const/4 p0, 0x7

    return p0

    :pswitch_10  #0x4
    const/4 p0, 0x3

    return p0

    :pswitch_12  #0x3
    const/4 p0, 0x2

    return p0

    :pswitch_14  #0x1, 0x2
    const/4 p0, 0x1

    return p0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_14  #00000001
        :pswitch_14  #00000002
        :pswitch_12  #00000003
        :pswitch_10  #00000004
        :pswitch_e  #00000005
        :pswitch_b  #00000006
        :pswitch_8  #00000007
        :pswitch_5  #00000008
    .end packed-switch
.end method


# virtual methods
.method public finishAndClearIncompleteUserJourney(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .registers 14

    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p1, p2}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    if-eqz v4, :cond_32

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

    :catchall_2f
    move-exception v0

    move-object p0, v0

    goto :goto_35

    :cond_32
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :goto_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_2f

    throw p0
.end method

.method public final logDelayedUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;I)V
    .registers 14

    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p2, Landroid/content/pm/UserInfo;->id:I

    const/16 v4, 0x9

    invoke-static {v0, v4}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    if-eqz v3, :cond_30

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

    :catchall_2d
    move-exception v0

    move-object p0, v0

    goto :goto_32

    :cond_30
    monitor-exit v1

    return-void

    :goto_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_2d

    throw p0
.end method

.method public final logNullUserJourneyError(IIIILjava/lang/String;)V
    .registers 16

    iget-object v8, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_3
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

    :catchall_2e
    move-exception v0

    monitor-exit v8
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public final logUserJourneyBegin(II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .registers 13

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide/16 v1, 0x1

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_12
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

    :catchall_2f
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_12 .. :try_end_32} :catchall_2f

    throw p0
.end method

.method public final logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
    .registers 15

    iget-object v8, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v8

    const/4 v1, -0x1

    if-eq p4, v1, :cond_c

    const/4 v1, 0x3

    if-eq p4, v1, :cond_a

    const/4 v1, 0x4

    :cond_a
    :goto_a
    move v4, v1

    goto :goto_e

    :cond_c
    const/4 v1, 0x2

    goto :goto_a

    :goto_e
    :try_start_e
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, p3}, Lcom/android/server/pm/UserJourneyLogger;->getUserJourneyKey(II)I

    move-result v9

    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    if-eqz v1, :cond_45

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

    :catchall_43
    move-exception v0

    goto :goto_48

    :cond_45
    monitor-exit v8

    const/4 v0, 0x0

    return-object v0

    :goto_48
    monitor-exit v8
    :try_end_49
    .catchall {:try_start_e .. :try_end_49} :catchall_43

    throw v0
.end method

.method public final logUserLifecycleEvent(III)V
    .registers 11

    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_27

    iget-object v3, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    div-int/lit8 v4, v3, 0x64

    if-ne v4, p1, :cond_24

    iget-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    monitor-exit v1

    :goto_1f
    move-object v2, v0

    goto :goto_2a

    :catchall_21
    move-exception v0

    move-object p0, v0

    goto :goto_33

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_21

    const/4 v0, 0x0

    goto :goto_1f

    :goto_2a
    const/4 v6, -0x1

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/UserJourneyLogger;->logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V

    return-void

    :goto_33
    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_21

    throw p0
.end method

.method public logUserLifecycleEventOccurred(Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;IIII)V
    .registers 20

    if-nez p1, :cond_f

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-wide/16 v1, -0x1

    move-object v0, p0

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/UserJourneyLogger;->writeUserLifecycleEventOccurred(JIIII)V

    return-void

    :cond_f
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
    .registers 30

    move-object/from16 v0, p1

    if-nez v0, :cond_19

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

    :cond_19
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
    .registers 9

    iget-object v0, p0, Lcom/android/server/pm/UserJourneyLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
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

    if-eqz v1, :cond_22

    invoke-virtual {p0, p1, p2, v2, v5}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_20
    move-exception p0

    goto :goto_33

    :cond_22
    iget-object v1, p0, Lcom/android/server/pm/UserJourneyLogger;->mUserIdToUserJourneyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/android/server/pm/UserJourneyLogger;->logUserJourneyFinishWithError(ILandroid/content/pm/UserInfo;II)Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_30
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_20

    throw p0
.end method

.method public writeUserLifecycleEventOccurred(JIIII)V
    .registers 7

    const/16 p0, 0x109

    invoke-static/range {p0 .. p6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIIII)V

    return-void
.end method

.method public writeUserLifecycleJourneyReported(JIIIIIIJ)V
    .registers 11

    const/16 p0, 0x108

    invoke-static/range {p0 .. p10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJIIIIIIJ)V

    return-void
.end method
