.class public final Lcom/android/server/usage/AppIdleHistory;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final APP_IDLE_FILENAME:Ljava/lang/String; = "app_idle_stats.xml"


# instance fields
.field public mElapsedDuration:J

.field public mElapsedSnapshot:J

.field public final mIdleHistory:Landroid/util/SparseArray;

.field public mScreenOn:Z

.field public mScreenOnDuration:J

.field public mScreenOnSnapshot:J

.field public final mStorageDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    iput-object p1, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3c

    :try_start_1a
    new-instance p2, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/FileReader;

    invoke-direct {p3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_3b} :catch_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_3b} :catch_3b

    :catch_3b
    return-void

    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    return-void
.end method

.method public static getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .registers 5

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    if-nez v0, :cond_2d

    if-eqz p2, :cond_2d

    new-instance p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-direct {p2}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    const-wide/32 v0, -0x80000000

    iput-wide v0, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    iput-wide v0, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    iput-wide v0, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    iput-wide v0, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    const/16 v0, 0x32

    iput v0, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v0, 0x100

    iput v0, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const/4 v0, -0x1

    iput v0, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_2d
    return-object v0
.end method

.method public static insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez v0, :cond_12

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    :cond_12
    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void
.end method

.method public static printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_c

    const-string p1, "<uninitialized>"

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_c
    sub-long/2addr p1, p3

    invoke-static {p1, p2, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    return-void
.end method

.method public static readBucketExpiryTimes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;)V
    .registers 6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-static {p0, v0}, Lcom/android/internal/util/jobs/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_46

    const-string/jumbo v1, "item"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "bucket"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    if-nez v1, :cond_24

    move v1, v3

    goto :goto_28

    :cond_24
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_28
    if-ne v1, v3, :cond_32

    const-string v1, "AppIdleHistory"

    const-string v2, "Error reading the buckets expiry times"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_32
    const-string/jumbo v3, "expiry"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3e

    const-wide/16 v2, 0x0

    goto :goto_42

    :cond_3e
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_42
    invoke-static {p1, v1, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V

    goto :goto_4

    :cond_46
    return-void
.end method


# virtual methods
.method public final dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    array-length v3, v2

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v3, :cond_1f1

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    aget v6, v2, v5

    const-string/jumbo v7, "User "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v7, " App Standby States:"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v7, v0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v12

    if-nez v7, :cond_3c

    move/from16 v16, v3

    move/from16 v17, v5

    goto/16 :goto_1e9

    :cond_3c
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_41
    if-ge v15, v14, :cond_1b9

    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v16

    if-nez v16, :cond_6a

    move/from16 v16, v3

    move-object/from16 v3, p3

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6e

    move/from16 v17, v5

    move-object v3, v7

    move-wide/from16 v18, v8

    goto/16 :goto_1ac

    :cond_6a
    move/from16 v16, v3

    move-object/from16 v3, p3

    :cond_6e
    new-instance v3, Ljava/lang/StringBuilder;

    move/from16 v17, v5

    const-string/jumbo v5, "package="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " u="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " bucket="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " reason="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    invoke-static {v5}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " used="

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object v3, v7

    move-wide/from16 v18, v8

    iget-wide v7, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    invoke-static {v1, v12, v13, v7, v8}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    const-string v5, " usedByUser="

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    invoke-static {v1, v12, v13, v7, v8}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    const-string v5, " usedScr="

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    invoke-static {v1, v12, v13, v7, v8}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    const-string v5, " lastPred="

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    invoke-static {v1, v12, v13, v7, v8}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    const-string v5, " expiryTimes="

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-eqz v5, :cond_132

    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    if-nez v5, :cond_ef

    goto :goto_132

    :cond_ef
    const-string v5, "("

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_fb
    if-ge v7, v5, :cond_12c

    iget-object v8, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v8

    iget-object v9, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v20

    if-eqz v7, :cond_110

    const-string v9, ","

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_110
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sub-long v8, v12, v20

    invoke-static {v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_fb

    :cond_12c
    const-string v5, ")"

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_137

    :cond_132
    :goto_132
    const-string v5, "<none>"

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_137
    const-string v5, " lastJob="

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    sub-long v7, v12, v7

    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, " lastInformedBucket="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    const-wide/16 v20, 0x0

    cmp-long v5, v7, v20

    if-lez v5, :cond_181

    const-string v5, " lastRestrictAttempt="

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    sub-long v7, v12, v7

    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, " lastRestrictReason="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    invoke-static {v7}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_181
    iget-wide v7, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    cmp-long v5, v7, v20

    if-lez v5, :cond_193

    const-string v5, " nextEstimatedLaunchTime="

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    sub-long v7, v7, v18

    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :cond_193
    invoke-virtual {v0, v6, v4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19d

    const-string/jumbo v2, "y"

    goto :goto_1a0

    :cond_19d
    const-string/jumbo v2, "n"

    :goto_1a0
    const-string v4, " idle="

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_1ac
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p2

    move-object v7, v3

    move/from16 v3, v16

    move/from16 v5, v17

    move-wide/from16 v8, v18

    goto/16 :goto_41

    :cond_1b9
    move/from16 v16, v3

    move/from16 v17, v5

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v2, "totalElapsedTime="

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v2, "totalScreenOnTime="

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    iget-boolean v4, v0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-eqz v4, :cond_1e0

    iget-wide v4, v0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long/2addr v10, v4

    add-long/2addr v2, v10

    :cond_1e0
    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_1e9
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v2, p2

    move/from16 v3, v16

    goto/16 :goto_8

    :cond_1f1
    return-void
.end method

.method public final getAppUsageHistory(ILjava/lang/String;)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p2, p1}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    return-object p0
.end method

.method public getBucketExpiryTimeMs(Ljava/lang/String;IIJ)J
    .registers 6

    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    const-wide/16 p1, 0x0

    if-eqz p0, :cond_17

    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez p0, :cond_12

    goto :goto_17

    :cond_12
    invoke-virtual {p0, p3, p1, p2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide p0

    return-wide p0

    :cond_17
    :goto_17
    return-wide p1
.end method

.method public final getElapsedTime(J)J
    .registers 5

    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getScreenOnTimeFile()Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string/jumbo v1, "screen_on_time"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUserFile(I)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p0, "app_idle_stats.xml"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUserHistory(I)Landroid/util/ArrayMap;
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-nez v2, :cond_227

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iget-object v3, v0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v3, "Unable to read app idle file for user "

    const-string v4, "AppIdleHistory"

    const/4 v5, 0x0

    :try_start_1e
    new-instance v6, Landroid/util/AtomicFile;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_2b} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2b} :catch_1eb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_2b} :catch_1eb
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_2b} :catch_1eb
    .catchall {:try_start_1e .. :try_end_2b} :catchall_1e8

    :try_start_2b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_38
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_3c} :catch_1d9
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3c} :catch_1d5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_3c} :catch_1d5
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_3c} :catch_1d5
    .catchall {:try_start_2b .. :try_end_3c} :catchall_1d1

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v0, v9, :cond_43

    if-eq v0, v8, :cond_43

    goto :goto_38

    :cond_43
    if-eq v0, v9, :cond_66

    :try_start_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_57} :catch_63
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_57} :catch_5f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45 .. :try_end_57} :catch_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_57} :catch_5f
    .catchall {:try_start_45 .. :try_end_57} :catchall_5b

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :catchall_5b
    move-exception v0

    move-object v5, v6

    goto/16 :goto_223

    :catch_5f
    move-exception v0

    move-object v5, v6

    goto/16 :goto_1f0

    :catch_63
    move-object v5, v6

    goto/16 :goto_208

    :cond_66
    :try_start_66
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "packages"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_71
    .catch Ljava/io/FileNotFoundException; {:try_start_66 .. :try_end_71} :catch_1d9
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_71} :catch_1d5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_66 .. :try_end_71} :catch_1d5
    .catch Ljava/lang/NumberFormatException; {:try_start_66 .. :try_end_71} :catch_1d5
    .catchall {:try_start_66 .. :try_end_71} :catchall_1d1

    if-nez v0, :cond_77

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :cond_77
    :try_start_77
    const-string/jumbo v0, "version"

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_83

    const/4 v0, 0x0

    :goto_81
    move v10, v0

    goto :goto_88

    :cond_83
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_81

    :cond_88
    :goto_88
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v8, :cond_1e2

    if-ne v0, v9, :cond_88

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "package"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18c

    const-string/jumbo v0, "name"

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-direct {v12}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    const-string/jumbo v0, "elapsedIdleTime"

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    const-string/jumbo v0, "lastUsedByUserElapsedTime"

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c0

    goto :goto_c4

    :cond_c0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    :goto_c4
    iput-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    const-string/jumbo v0, "screenIdleTime"

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    const-string/jumbo v0, "lastPredictedTime"

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e1

    const-wide/16 v13, 0x0

    :goto_de
    const-wide/16 v17, 0x0

    goto :goto_e7

    :cond_e1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide v13, v15

    goto :goto_de

    :goto_e7
    iput-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    const-string/jumbo v0, "appLimitBucket"

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v13, 0xa

    if-nez v0, :cond_f6

    move v0, v13

    goto :goto_fa

    :cond_f6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_fa
    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const-string/jumbo v0, "bucketReason"

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v14, "lastJobRunTime"

    invoke-interface {v7, v5, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_10f

    const-wide/high16 v14, -0x8000000000000000L

    goto :goto_113

    :cond_10f
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    :goto_113
    iput-wide v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const/16 v14, 0x100

    iput v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_119
    .catch Ljava/io/FileNotFoundException; {:try_start_77 .. :try_end_119} :catch_1d9
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_119} :catch_1d5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_77 .. :try_end_119} :catch_1d5
    .catch Ljava/lang/NumberFormatException; {:try_start_77 .. :try_end_119} :catch_1d5
    .catchall {:try_start_77 .. :try_end_119} :catchall_1d1

    const/16 v14, 0x10

    if-eqz v0, :cond_12b

    :try_start_11d
    invoke-static {v0, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_123
    .catch Ljava/lang/NumberFormatException; {:try_start_11d .. :try_end_123} :catch_124
    .catch Ljava/io/FileNotFoundException; {:try_start_11d .. :try_end_123} :catch_63
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_123} :catch_5f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11d .. :try_end_123} :catch_5f
    .catchall {:try_start_11d .. :try_end_123} :catchall_5b

    goto :goto_12b

    :catch_124
    move-exception v0

    :try_start_125
    const-string/jumbo v15, "Unable to read bucketing reason"

    invoke-static {v4, v15, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12b
    .catch Ljava/io/FileNotFoundException; {:try_start_125 .. :try_end_12b} :catch_63
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_12b} :catch_5f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_125 .. :try_end_12b} :catch_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_125 .. :try_end_12b} :catch_5f
    .catchall {:try_start_125 .. :try_end_12b} :catchall_5b

    :cond_12b
    :goto_12b
    :try_start_12b
    const-string/jumbo v0, "lastRestrictionAttemptElapsedTime"

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_137

    move-wide/from16 v8, v17

    goto :goto_13c

    :cond_137
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide v8, v15

    :goto_13c
    iput-wide v8, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    const-string/jumbo v0, "lastRestrictionAttemptReason"

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_145
    .catch Ljava/io/FileNotFoundException; {:try_start_12b .. :try_end_145} :catch_1d9
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_145} :catch_1d5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12b .. :try_end_145} :catch_1d5
    .catch Ljava/lang/NumberFormatException; {:try_start_12b .. :try_end_145} :catch_1d5
    .catchall {:try_start_12b .. :try_end_145} :catchall_1d1

    if-eqz v0, :cond_155

    :try_start_147
    invoke-static {v0, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I
    :try_end_14d
    .catch Ljava/lang/NumberFormatException; {:try_start_147 .. :try_end_14d} :catch_14e
    .catch Ljava/io/FileNotFoundException; {:try_start_147 .. :try_end_14d} :catch_63
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14d} :catch_5f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_147 .. :try_end_14d} :catch_5f
    .catchall {:try_start_147 .. :try_end_14d} :catchall_5b

    goto :goto_155

    :catch_14e
    move-exception v0

    :try_start_14f
    const-string/jumbo v8, "Unable to read last restrict reason"

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_155
    .catch Ljava/io/FileNotFoundException; {:try_start_14f .. :try_end_155} :catch_63
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_155} :catch_5f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14f .. :try_end_155} :catch_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_14f .. :try_end_155} :catch_5f
    .catchall {:try_start_14f .. :try_end_155} :catchall_5b

    :cond_155
    :goto_155
    :try_start_155
    const-string/jumbo v0, "nextEstimatedAppLaunchTime"

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_161

    move-wide/from16 v8, v17

    goto :goto_165

    :cond_161
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    :goto_165
    iput-wide v8, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    iget v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    invoke-virtual {v2, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16e
    .catch Ljava/io/FileNotFoundException; {:try_start_155 .. :try_end_16e} :catch_1d9
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_16e} :catch_1d5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_155 .. :try_end_16e} :catch_1d5
    .catch Ljava/lang/NumberFormatException; {:try_start_155 .. :try_end_16e} :catch_1d5
    .catchall {:try_start_155 .. :try_end_16e} :catchall_1d1

    const/4 v8, 0x1

    if-lt v10, v8, :cond_18f

    :try_start_171
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_175
    :goto_175
    invoke-static {v7, v0}, Lcom/android/internal/util/jobs/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v9

    if-eqz v9, :cond_18c

    const-string/jumbo v9, "expiryTimes"

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_175

    invoke-static {v7, v12}, Lcom/android/server/usage/AppIdleHistory;->readBucketExpiryTimes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;)V
    :try_end_18b
    .catch Ljava/io/FileNotFoundException; {:try_start_171 .. :try_end_18b} :catch_63
    .catch Ljava/io/IOException; {:try_start_171 .. :try_end_18b} :catch_5f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_171 .. :try_end_18b} :catch_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_171 .. :try_end_18b} :catch_5f
    .catchall {:try_start_171 .. :try_end_18b} :catchall_5b

    goto :goto_175

    :cond_18c
    move-object/from16 p0, v6

    goto :goto_1dc

    :cond_18f
    :try_start_18f
    const-string/jumbo v0, "activeTimeoutTime"

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19b

    move-wide/from16 v14, v17

    goto :goto_19f

    :cond_19b
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    :goto_19f
    const-string/jumbo v0, "workingSetTimeoutTime"

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1ad

    move-object/from16 p0, v6

    move-wide/from16 v5, v17

    goto :goto_1b5

    :cond_1ad
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19
    :try_end_1b1
    .catch Ljava/io/FileNotFoundException; {:try_start_18f .. :try_end_1b1} :catch_1d9
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_1b1} :catch_1d5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18f .. :try_end_1b1} :catch_1d5
    .catch Ljava/lang/NumberFormatException; {:try_start_18f .. :try_end_1b1} :catch_1d5
    .catchall {:try_start_18f .. :try_end_1b1} :catchall_1d1

    move-object/from16 p0, v6

    move-wide/from16 v5, v19

    :goto_1b5
    cmp-long v0, v14, v17

    if-nez v0, :cond_1bd

    cmp-long v0, v5, v17

    if-eqz v0, :cond_1dc

    :cond_1bd
    :try_start_1bd
    invoke-static {v12, v13, v14, v15}, Lcom/android/server/usage/AppIdleHistory;->insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V

    const/16 v0, 0x14

    invoke-static {v12, v0, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V
    :try_end_1c5
    .catch Ljava/io/FileNotFoundException; {:try_start_1bd .. :try_end_1c5} :catch_1ce
    .catch Ljava/io/IOException; {:try_start_1bd .. :try_end_1c5} :catch_1ca
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1bd .. :try_end_1c5} :catch_1ca
    .catch Ljava/lang/NumberFormatException; {:try_start_1bd .. :try_end_1c5} :catch_1ca
    .catchall {:try_start_1bd .. :try_end_1c5} :catchall_1c6

    goto :goto_1dc

    :catchall_1c6
    move-exception v0

    :goto_1c7
    move-object/from16 v5, p0

    goto :goto_223

    :catch_1ca
    move-exception v0

    :goto_1cb
    move-object/from16 v5, p0

    goto :goto_1f0

    :catch_1ce
    :goto_1ce
    move-object/from16 v5, p0

    goto :goto_208

    :catchall_1d1
    move-exception v0

    move-object/from16 p0, v6

    goto :goto_1c7

    :catch_1d5
    move-exception v0

    move-object/from16 p0, v6

    goto :goto_1cb

    :catch_1d9
    move-object/from16 p0, v6

    goto :goto_1ce

    :cond_1dc
    :goto_1dc
    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object/from16 v6, p0

    goto/16 :goto_88

    :cond_1e2
    move-object/from16 p0, v6

    invoke-static/range {p0 .. p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_222

    :catchall_1e8
    move-exception v0

    const/4 v5, 0x0

    goto :goto_223

    :catch_1eb
    move-exception v0

    const/4 v5, 0x0

    goto :goto_1f0

    :catch_1ee
    const/4 v5, 0x0

    goto :goto_208

    :goto_1f0
    :try_start_1f0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_202
    .catchall {:try_start_1f0 .. :try_end_202} :catchall_206

    :goto_202
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_222

    :catchall_206
    move-exception v0

    goto :goto_223

    :goto_208
    :try_start_208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App idle file for user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_221
    .catchall {:try_start_208 .. :try_end_221} :catchall_206

    goto :goto_202

    :goto_222
    return-object v2

    :goto_223
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_227
    return-object v2
.end method

.method public final isIdle(ILjava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p2, p1}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    iget p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 p2, 0x28

    if-lt p0, p2, :cond_10

    return p1

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final readRestoreToRareAppsList(I)Landroid/util/ArraySet;
    .registers 8

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p0, "restore_to_rare_apps_list"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_23

    goto :goto_69

    :cond_23
    :try_start_23
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2d} :catch_69
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_2d} :catch_69

    :try_start_2d
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0xa4cb800

    cmp-long v2, v4, v2

    if-lez v2, :cond_52

    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4c
    .catchall {:try_start_2d .. :try_end_4c} :catchall_50

    :try_start_4c
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_69
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_4f} :catch_69

    return-object p1

    :catchall_50
    move-exception v0

    goto :goto_60

    :cond_52
    :goto_52
    :try_start_52
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_50

    goto :goto_52

    :cond_5c
    :try_start_5c
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_69
    .catch Ljava/lang/NumberFormatException; {:try_start_5c .. :try_end_5f} :catch_69

    return-object v1

    :goto_60
    :try_start_60
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_68

    :catchall_64
    move-exception p0

    :try_start_65
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_68
    throw v0
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_69} :catch_69
    .catch Ljava/lang/NumberFormatException; {:try_start_65 .. :try_end_69} :catch_69

    :catch_69
    :goto_69
    return-object p1
.end method

.method public final reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)V
    .registers 23

    move/from16 v0, p4

    move-wide/from16 v1, p6

    move-wide/from16 v3, p8

    const/16 v5, 0x300

    move/from16 v6, p5

    or-int/2addr v6, v5

    const v7, 0xff00

    and-int v8, v6, v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v8, v5, :cond_1d

    and-int/lit16 v5, v6, 0xff

    const/4 v8, 0x3

    if-eq v5, v8, :cond_1c

    const/4 v8, 0x4

    if-ne v5, v8, :cond_1d

    :cond_1c
    move v10, v9

    :cond_1d
    iget v5, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v8, 0x2d

    if-ne v5, v8, :cond_2f

    if-nez v10, :cond_2f

    iget v5, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int v11, v5, v7

    const/16 v12, 0x200

    if-eq v11, v12, :cond_2f

    move v6, v5

    goto :goto_74

    :cond_2f
    cmp-long v5, v3, v1

    if-lez v5, :cond_73

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v3

    iget-object v5, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez v5, :cond_42

    new-instance v5, Landroid/util/SparseLongArray;

    invoke-direct {v5}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v5, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    :cond_42
    iget-object v5, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v11

    iget-object v5, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v5, v0, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v3

    iget-object v5, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez v5, :cond_5a

    goto :goto_73

    :cond_5a
    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    sub-int/2addr v5, v9

    :goto_5f
    if-ltz v5, :cond_73

    iget-object v8, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v8

    cmp-long v8, v8, v3

    if-gez v8, :cond_70

    iget-object v8, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_70
    add-int/lit8 v5, v5, -0x1

    goto :goto_5f

    :cond_73
    :goto_73
    move v8, v0

    :goto_74
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_94

    iget-wide v3, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v11, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v11, v1, v11

    add-long/2addr v11, v3

    iput-wide v11, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    if-eqz v10, :cond_87

    iput-wide v11, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    :cond_87
    iget-wide v3, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    iget-boolean v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-eqz v0, :cond_92

    iget-wide v9, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long v0, v1, v9

    add-long/2addr v3, v0

    :cond_92
    iput-wide v3, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    :cond_94
    iget p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-lt p0, v8, :cond_b3

    if-le p0, v8, :cond_b1

    iput v8, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    and-int p0, v6, v7

    and-int/lit16 v0, v6, 0xff

    const/16 v1, 0x102

    move/from16 p8, p0

    move-object/from16 p5, p2

    move/from16 p6, p3

    move/from16 p9, v0

    move/from16 p4, v1

    move/from16 p7, v8

    invoke-static/range {p4 .. p9}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIII)V

    :cond_b1
    iput v6, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    :cond_b3
    return-void
.end method

.method public final setAppStandbyBucket(IIIJLjava/lang/String;Z)V
    .registers 16

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p6, v1}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;Z)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    iget v2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-eq v2, p2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iput p2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iput p3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    invoke-virtual {p0, p4, p5}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p4

    const p0, 0xff00

    and-int v6, p3, p0

    const/16 p0, 0x500

    if-ne v6, p0, :cond_24

    iput-wide p4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    iput p2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    :cond_24
    if-eqz p7, :cond_2d

    iget-object p0, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clear()V

    :cond_2d
    if-eqz v1, :cond_39

    and-int/lit16 v7, p3, 0xff

    const/16 v2, 0x102

    move v4, p1

    move v5, p2

    move-object v3, p6

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIII)V

    :cond_39
    return-void
.end method

.method public final updateDisplay(JZ)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-ne p3, v0, :cond_5

    return-void

    :cond_5
    iput-boolean p3, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-eqz p3, :cond_c

    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    return-void

    :cond_c
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long v2, p1, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v2, p1, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    return-void
.end method

.method public final writeAppIdleTimes(IJ)V
    .registers 24

    const-string/jumbo v0, "item"

    const-string/jumbo v1, "expiryTimes"

    const-string/jumbo v2, "package"

    const-string v3, "AppIdleHistory"

    const-string/jumbo v4, "packages"

    new-instance v5, Landroid/util/AtomicFile;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v6, 0x0

    :try_start_18
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_188

    :try_start_1c
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v9, Lcom/android/internal/util/jobs/FastXmlSerializer;

    invoke-direct {v9}, Lcom/android/internal/util/jobs/FastXmlSerializer;-><init>()V

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/android/internal/util/jobs/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Lcom/android/internal/util/jobs/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {v9, v6, v4}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "version"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v6, v8, v10}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v8, p0

    move-wide/from16 v10, p2

    invoke-virtual {v8, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v10

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_59
    if-ge v14, v12, :cond_17c

    invoke-virtual {v8, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_61} :catch_178

    if-nez v15, :cond_72

    :try_start_63
    const-string/jumbo v15, "Skipping App Idle write for unexpected null package"

    invoke-static {v3, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_69} :catch_6e

    move-object v15, v7

    move-object/from16 p2, v8

    goto/16 :goto_170

    :catch_6e
    move-exception v0

    move-object v6, v7

    goto/16 :goto_18a

    :cond_72
    :try_start_72
    invoke-virtual {v8, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-virtual {v9, v6, v2}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 p2, v8

    const-string/jumbo v8, "name"

    invoke-virtual {v9, v6, v8, v15}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "elapsedIdleTime"
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_88} :catch_178

    move-object v15, v7

    :try_start_89
    iget-wide v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v9, v7, v8, v6}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "lastUsedByUserElapsedTime"

    iget-wide v7, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v9, v8, v6, v7}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "screenIdleTime"

    move-object v7, v9

    iget-wide v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    move-object v9, v7

    const/4 v7, 0x0

    invoke-virtual {v9, v7, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "lastPredictedTime"

    iget-wide v7, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v9, v8, v6, v7}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "appLimitBucket"

    iget v7, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v8, v6, v7}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "bucketReason"

    iget v7, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v8, v6, v7}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v16, v6, v16

    if-eqz v16, :cond_ec

    const-string/jumbo v8, "lastJobRunTime"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v9, v7, v8, v6}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_ec

    :catch_e8
    move-exception v0

    :goto_e9
    move-object v6, v15

    goto/16 :goto_18a

    :cond_ec
    :goto_ec
    iget-wide v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    const-wide/16 v17, 0x0

    cmp-long v8, v6, v17

    if-lez v8, :cond_ff

    const-string/jumbo v8, "lastRestrictionAttemptElapsedTime"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v9, v7, v8, v6}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_ff
    const-string/jumbo v6, "lastRestrictionAttemptReason"

    iget v7, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v9, v8, v6, v7}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    cmp-long v16, v6, v17

    if-lez v16, :cond_11d

    const-string/jumbo v8, "nextEstimatedAppLaunchTime"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v9, v7, v8, v6}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_11d
    iget-object v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-eqz v6, :cond_16c

    const/4 v7, 0x0

    invoke-virtual {v9, v7, v1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v6}, Landroid/util/SparseLongArray;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_12c
    if-ge v7, v6, :cond_168

    iget-object v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v17

    cmp-long v8, v17, v10

    if-gez v8, :cond_13d

    move/from16 p3, v6

    move/from16 v19, v7

    goto :goto_163

    :cond_13d
    iget-object v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v8

    move/from16 p3, v6

    const/4 v6, 0x0

    invoke-virtual {v9, v6, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "bucket"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v19, v7

    const/4 v7, 0x0

    invoke-virtual {v9, v7, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "expiry"

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v7, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v9, v7, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_163
    add-int/lit8 v7, v19, 0x1

    move/from16 v6, p3

    goto :goto_12c

    :cond_168
    const/4 v7, 0x0

    invoke-virtual {v9, v7, v1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_16c
    const/4 v7, 0x0

    invoke-virtual {v9, v7, v2}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_170
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, p2

    move-object v7, v15

    const/4 v6, 0x0

    goto/16 :goto_59

    :catch_178
    move-exception v0

    move-object v15, v7

    goto/16 :goto_e9

    :cond_17c
    move-object v15, v7

    move-object v7, v6

    invoke-virtual {v9, v7, v4}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v9}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endDocument()V

    invoke-virtual {v5, v15}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_187} :catch_e8

    return-void

    :catch_188
    move-exception v0

    move-object v7, v6

    :goto_18a
    invoke-virtual {v5, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error writing app idle file for user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final writeRestoreToRareAppsList(ILandroid/util/ArraySet;)V
    .registers 8

    const-string v0, "\n"

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string/jumbo v4, "users"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p0, "restore_to_rare_apps_list"

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_66

    :cond_24
    new-instance p0, Landroid/util/AtomicFile;

    invoke-direct {p0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_29
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p1
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_62

    :try_start_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_40
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    :cond_53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_61} :catch_63

    return-void

    :catch_62
    const/4 p1, 0x0

    :catch_63
    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_66
    return-void
.end method

.method public final writeScreenOnTime()V
    .registers 7

    const-string v0, "\n"

    new-instance v1, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_b
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_3b

    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_3a} :catch_3c

    return-void

    :catch_3b
    const/4 v2, 0x0

    :catch_3c
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void
.end method
