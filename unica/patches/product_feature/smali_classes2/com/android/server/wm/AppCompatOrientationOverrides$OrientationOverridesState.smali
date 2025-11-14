.class public final Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final MIN_COUNT_TO_IGNORE_REQUEST_IN_LOOP:I = 0x2

.field static final SET_ORIENTATION_REQUEST_COUNTER_TIMEOUT_MS:I = 0x3e8


# instance fields
.field mCurrentTimeMillisSupplier:Ljava/util/function/LongSupplier;

.field public final mIsOverrideAnyOrientationEnabled:Z

.field public final mIsOverrideToNosensorOrientationEnabled:Z

.field public final mIsOverrideToPortraitOrientationEnabled:Z

.field public final mIsOverrideToReverseLandscapeOrientationEnabled:Z

.field public mIsRelaunchingAfterRequestedOrientationChanged:Z

.field public mSetOrientationRequestCounter:I

.field public mTimeMsLastSetOrientationRequest:J


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mTimeMsLastSetOrientationRequest:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    iput-object p2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mCurrentTimeMillisSupplier:Ljava/util/function/LongSupplier;

    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const-wide/32 v0, 0xfd27655

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideToNosensorOrientationEnabled:Z

    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const-wide/32 v0, 0xfd27b38

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideToPortraitOrientationEnabled:Z

    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const-wide/32 v0, 0xfd2aa87

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideAnyOrientationEnabled:Z

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const-wide/32 v0, 0xfdcbe7f

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideToReverseLandscapeOrientationEnabled:Z

    return-void
.end method
