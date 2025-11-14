.class public abstract Lcom/android/server/people/prediction/SharesheetModelScorer;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final FOREGROUND_APP_PROMO_TIME_WINDOW:J

.field static final FOREGROUND_APP_WEIGHT:F

.field public static final ONE_MONTH_WINDOW:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/people/prediction/SharesheetModelScorer;->ONE_MONTH_WINDOW:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/people/prediction/SharesheetModelScorer;->FOREGROUND_APP_PROMO_TIME_WINDOW:J

    return-void
.end method

.method public static computeScore(Ljava/util/List;IJ)V
    .registers 27

    move-object/from16 v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_26b

    :cond_c
    new-instance v1, Ljava/util/PriorityQueue;

    new-instance v2, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    move v7, v6

    move v10, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_2e
    if-ge v11, v4, :cond_18a

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    new-instance v13, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iput v6, v13, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mRecencyScore:F

    iput v6, v13, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    iput v6, v13, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    move-result-object v14

    if-nez v14, :cond_4d

    goto :goto_2e

    :cond_4d
    invoke-virtual {v12}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    move-result-object v14

    sget-object v15, Lcom/android/server/people/data/Event;->SHARE_EVENT_TYPES:Ljava/util/Set;

    invoke-interface {v14, v15}, Lcom/android/server/people/data/EventHistory;->getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/people/data/EventIndex;->getActiveTimeSlots()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_8c

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_65
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_87

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Range;

    invoke-virtual {v15}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-long v15, p2, v15

    invoke-static/range {v15 .. v16}, Lcom/android/server/people/prediction/SharesheetModelScorer;->getFreqDecayedOnElapsedTime(J)F

    move-result v15

    iget v5, v13, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    add-float/2addr v5, v15

    iput v5, v13, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    goto :goto_65

    :cond_87
    iget v5, v13, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    add-float/2addr v7, v5

    add-int/lit8 v8, v8, 0x1

    :cond_8c
    invoke-virtual {v12}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    move-result-object v5

    move/from16 v14, p1

    invoke-interface {v5, v14}, Lcom/android/server/people/data/EventHistory;->getEventIndex(I)Lcom/android/server/people/data/EventIndex;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/people/data/EventIndex;->getActiveTimeSlots()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_d2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_ca

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Range;

    invoke-virtual {v15}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-long v15, p2, v15

    invoke-static/range {v15 .. v16}, Lcom/android/server/people/prediction/SharesheetModelScorer;->getFreqDecayedOnElapsedTime(J)F

    move-result v15

    move/from16 v16, v6

    iget v6, v13, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    add-float/2addr v6, v15

    iput v6, v13, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    move/from16 v6, v16

    goto :goto_a4

    :cond_ca
    move/from16 v16, v6

    iget v5, v13, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    add-float/2addr v10, v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_d4

    :cond_d2
    move/from16 v16, v6

    :goto_d4
    invoke-virtual {v12}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getEventHistory()Lcom/android/server/people/data/EventHistory;

    move-result-object v5

    sget-object v6, Lcom/android/server/people/data/Event;->SHARE_EVENT_TYPES:Ljava/util/Set;

    invoke-interface {v5, v6}, Lcom/android/server/people/data/EventHistory;->getEventIndex(Ljava/util/Set;)Lcom/android/server/people/data/EventIndex;

    move-result-object v5

    iget-object v6, v5, Lcom/android/server/people/data/EventIndex;->mLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v12, 0x3

    :goto_e2
    if-ltz v12, :cond_13e

    :try_start_e4
    iget-object v15, v5, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    aget-wide v17, v15, v12

    const-wide/16 v19, 0x0

    cmp-long v15, v17, v19

    if-nez v15, :cond_f1

    add-int/lit8 v12, v12, -0x1

    goto :goto_e2

    :cond_f1
    sget-object v15, Lcom/android/server/people/data/EventIndex;->TIME_SLOT_FACTORIES:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/function/Function;

    move/from16 v18, v4

    iget-wide v3, v5, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    iget-object v4, v5, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    aget-wide v4, v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    invoke-static {v3}, Lcom/android/server/people/data/EventIndex;->getDuration(Landroid/util/Range;)J

    move-result-wide v19

    int-to-long v4, v4

    mul-long v19, v19, v4

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v4, v19

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    sub-long v21, v21, v19

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    monitor-exit v6

    goto :goto_142

    :catchall_13c
    move-exception v0

    goto :goto_188

    :cond_13e
    move/from16 v18, v4

    monitor-exit v6
    :try_end_141
    .catchall {:try_start_e4 .. :try_end_141} :catchall_13c

    const/4 v3, 0x0

    :goto_142
    if-nez v3, :cond_146

    :cond_144
    const/4 v5, 0x6

    goto :goto_181

    :cond_146
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_16f

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/util/Range;

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    cmp-long v4, v4, v19

    if-lez v4, :cond_144

    :cond_16f
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_179

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    :cond_179
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v13, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    :goto_181
    move v3, v5

    move/from16 v6, v16

    move/from16 v4, v18

    goto/16 :goto_2e

    :goto_188
    :try_start_188
    monitor-exit v6
    :try_end_189
    .catchall {:try_start_188 .. :try_end_189} :catchall_13c

    throw v0

    :cond_18a
    move/from16 v16, v6

    :goto_18c
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b9

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1a9

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    const v4, 0x3ca3d70a  # 0.02f

    mul-float/2addr v3, v4

    const v4, 0x3eb33333  # 0.35f

    sub-float/2addr v4, v3

    goto :goto_1ac

    :cond_1a9
    const v4, 0x3ecccccd  # 0.4f

    :goto_1ac
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;

    iput v4, v3, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mRecencyScore:F

    goto :goto_18c

    :cond_1b9
    if-eqz v8, :cond_1be

    int-to-float v1, v8

    div-float/2addr v7, v1

    goto :goto_1c0

    :cond_1be
    move/from16 v7, v16

    :goto_1c0
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    if-eqz v9, :cond_1c9

    int-to-float v3, v9

    div-float/2addr v10, v3

    goto :goto_1cb

    :cond_1c9
    move/from16 v10, v16

    :goto_1cb
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x0

    :goto_1d0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_26b

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-wide/16 v11, 0x0

    if-eqz v8, :cond_1f0

    move-wide v8, v11

    goto :goto_1f4

    :cond_1f0
    iget v8, v6, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    div-float/2addr v8, v7

    float-to-double v8, v8

    :goto_1f4
    const-wide/high16 v13, 0x4004000000000000L  # 2.5

    cmpl-double v13, v8, v13

    const v14, 0x3dcccccd  # 0.1f

    const v15, 0x3e19999a  # 0.15f

    const v17, 0x3e4ccccd  # 0.2f

    if-ltz v13, :cond_206

    move/from16 v8, v17

    goto :goto_222

    :cond_206
    const-wide/high16 v18, 0x3ff8000000000000L  # 1.5

    cmpl-double v13, v8, v18

    if-ltz v13, :cond_20e

    move v8, v15

    goto :goto_222

    :cond_20e
    const-wide/high16 v18, 0x3ff0000000000000L  # 1.0

    cmpl-double v13, v8, v18

    if-ltz v13, :cond_216

    move v8, v14

    goto :goto_222

    :cond_216
    const-wide/high16 v18, 0x3fe8000000000000L  # 0.75

    cmpl-double v8, v8, v18

    if-ltz v8, :cond_220

    const v8, 0x3d4ccccd  # 0.05f

    goto :goto_222

    :cond_220
    move/from16 v8, v16

    :goto_222
    iput v8, v6, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_230

    move-wide v8, v11

    goto :goto_234

    :cond_230
    iget v8, v6, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    div-float/2addr v8, v10

    float-to-double v8, v8

    :goto_234
    const-wide/high16 v18, 0x4000000000000000L  # 2.0

    cmpl-double v13, v8, v18

    if-ltz v13, :cond_23d

    move/from16 v14, v17

    goto :goto_24f

    :cond_23d
    const-wide v17, 0x3ff3333333333333L  # 1.2

    cmpl-double v13, v8, v17

    if-ltz v13, :cond_248

    move v14, v15

    goto :goto_24f

    :cond_248
    cmpl-double v8, v8, v11

    if-lez v8, :cond_24d

    goto :goto_24f

    :cond_24d
    move/from16 v14, v16

    :goto_24f
    iput v14, v6, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mMimeFrequencyScore:F

    iget v8, v6, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mRecencyScore:F

    iget v6, v6, Lcom/android/server/people/prediction/SharesheetModelScorer$ShareTargetRankingScore;->mFrequencyScore:F

    const/high16 v9, 0x3f800000  # 1.0f

    sub-float v8, v9, v8

    sub-float v6, v9, v6

    mul-float/2addr v6, v8

    sub-float v6, v9, v6

    sub-float v6, v9, v6

    sub-float v8, v9, v14

    mul-float/2addr v8, v6

    sub-float/2addr v9, v8

    invoke-virtual {v4, v9}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->setScore(F)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1d0

    :cond_26b
    :goto_26b
    return-void
.end method

.method public static getFreqDecayedOnElapsedTime(J)F
    .registers 4

    invoke-static {p0, p1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p1

    if-gtz p1, :cond_13

    const/high16 p0, 0x3f800000  # 1.0f

    return p0

    :cond_13
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p1

    if-gtz p1, :cond_23

    const p0, 0x3f666666  # 0.9f

    return p0

    :cond_23
    const-wide/16 v0, 0x7

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p1

    if-gtz p1, :cond_33

    const p0, 0x3f4ccccd  # 0.8f

    return p0

    :cond_33
    const-wide/16 v0, 0xe

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p0

    if-gtz p0, :cond_43

    const p0, 0x3f333333  # 0.7f

    return p0

    :cond_43
    const p0, 0x3f19999a  # 0.6f

    return p0
.end method

.method public static promoteApp(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/Function;FF)F
    .registers 11

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/AppUsageStatsData;

    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_c

    :cond_27
    if-lez v2, :cond_85

    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_31
    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    goto :goto_31

    :cond_4b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    invoke-virtual {v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_65

    goto :goto_31

    :cond_65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/AppUsageStatsData;

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    int-to-float v4, v2

    div-float/2addr v0, v4

    invoke-virtual {v3, v0}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->setScore(F)V

    cmpl-float v3, v0, v5

    if-lez v3, :cond_31

    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    goto :goto_31

    :cond_85
    return p4
.end method
