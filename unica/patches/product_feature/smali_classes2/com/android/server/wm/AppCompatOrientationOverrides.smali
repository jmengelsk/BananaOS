.class public final Lcom/android/server/wm/AppCompatOrientationOverrides;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAllowDisplayOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAllowIgnoringOrientationRequestWhenLoopDetectedOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAllowOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mIgnoreRequestedOrientationOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mOrientationOverridesState:Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;

    new-instance v1, Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda0;)V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mOrientationOverridesState:Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    new-instance p2, Lcom/android/server/wm/AppCompatUtils$1;

    invoke-direct {p2, p1}, Lcom/android/server/wm/AppCompatUtils$1;-><init>(Ljava/util/function/BooleanSupplier;)V

    const-string/jumbo p1, "android.window.PROPERTY_COMPAT_IGNORE_REQUESTED_ORIENTATION"

    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mIgnoreRequestedOrientationOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    const-string/jumbo p1, "android.window.PROPERTY_COMPAT_ALLOW_IGNORING_ORIENTATION_REQUEST_WHEN_LOOP_DETECTED"

    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mAllowIgnoringOrientationRequestWhenLoopDetectedOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    const-string/jumbo p1, "android.window.PROPERTY_COMPAT_ALLOW_ORIENTATION_OVERRIDE"

    invoke-virtual {p3, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mAllowOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    new-instance p1, Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda2;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    const-string/jumbo p2, "android.window.PROPERTY_COMPAT_ALLOW_DISPLAY_ORIENTATION_OVERRIDE"

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mAllowDisplayOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    return-void
.end method


# virtual methods
.method public getSetOrientationRequestCounter()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mOrientationOverridesState:Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;

    iget p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    return p0
.end method

.method public final shouldIgnoreOrientationRequestLoop()Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const-wide/32 v2, 0x104d6bf7

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mAllowIgnoringOrientationRequestWhenLoopDetectedOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mOrientationOverridesState:Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mCurrentTimeMillisSupplier:Ljava/util/function/LongSupplier;

    invoke-interface {v1}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mTimeMsLastSetOrientationRequest:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    cmp-long v1, v5, v7

    const/4 v5, 0x1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    :goto_0
    iput-wide v3, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mTimeMsLastSetOrientationRequest:J

    iget p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    const/4 v1, 0x2

    if-lt p0, v1, :cond_2

    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result p0

    if-nez p0, :cond_2

    return v5

    :cond_2
    :goto_1
    return v2
.end method
