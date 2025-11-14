.class public final Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public bucketExpiryTimesMs:Landroid/util/SparseLongArray;

.field public bucketingReason:I

.field public currentBucket:I

.field public lastInformedBucket:I

.field public lastJobRunTime:J

.field public lastPredictedBucket:I

.field public lastPredictedTime:J

.field public lastRestrictAttemptElapsedTime:J

.field public lastRestrictReason:I

.field public lastUsedByUserElapsedTime:J

.field public lastUsedElapsedTime:J

.field public lastUsedScreenTime:J

.field public nextEstimatedLaunchTime:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    return-void
.end method
