.class public final Lcom/android/server/wm/AppCompatReachabilityPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field mLetterboxInnerBoundsSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public final mOnSingleTap:Lcom/android/server/wm/AppCompatReachabilityPolicy$$ExternalSyntheticLambda0;

.field public mShouldPlayMoveAnimation:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/AppCompatReachabilityPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppCompatReachabilityPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatReachabilityPolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mOnSingleTap:Lcom/android/server/wm/AppCompatReachabilityPolicy$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object p2, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    return-void
.end method

.method public static shouldPlayMoveAnimation(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mShouldPlayMoveAnimation:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final handleDoubleTap(II)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v1, v1, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v1, v1, Lcom/android/server/wm/AppCompatOverrides;->mReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->inTransitionSelfOrParent()Z

    move-result v2

    iget-object v3, v1, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    if-eqz v3, :cond_9c

    if-eqz v2, :cond_25

    goto/16 :goto_9c

    :cond_25
    iget-object v2, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mLetterboxInnerBoundsSupplier:Ljava/util/function/Supplier;

    if-eqz v2, :cond_30

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    goto :goto_35

    :cond_30
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :goto_35
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-gt v3, p1, :cond_3f

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-lt v3, p1, :cond_3f

    goto/16 :goto_9c

    :cond_3f
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v3, v3, Lcom/android/server/wm/AppCompatController;->mDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndSeparatingHinge()Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-boolean v3, v7, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    if-eqz v3, :cond_4f

    move v3, v6

    goto :goto_50

    :cond_4f
    move v3, v4

    :goto_50
    iget-object v8, v7, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {v8, v3}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget-object v1, v1, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    iget-object v10, v7, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    if-le v9, p1, :cond_7a

    invoke-virtual {v10, v3}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result p1

    if-eqz v3, :cond_66

    move v2, v5

    goto :goto_67

    :cond_66
    move v2, v6

    :goto_67
    sub-int/2addr p1, v2

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v10, p1, v3}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(IZ)V

    if-ne v8, v6, :cond_73

    move p1, v6

    goto :goto_74

    :cond_73
    const/4 p1, 0x4

    :goto_74
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->logLetterboxPositionChange(I)V

    iput-boolean v6, v1, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    goto :goto_99

    :cond_7a
    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ge v2, p1, :cond_99

    invoke-virtual {v10, v3}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result p1

    if-eqz v3, :cond_86

    move v2, v5

    goto :goto_87

    :cond_86
    move v2, v6

    :goto_87
    add-int/2addr p1, v2

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v10, p1, v3}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(IZ)V

    if-ne v8, v6, :cond_93

    const/4 p1, 0x3

    goto :goto_94

    :cond_93
    move p1, v5

    :goto_94
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->logLetterboxPositionChange(I)V

    iput-boolean v6, v1, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    :cond_99
    :goto_99
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    :cond_9c
    :goto_9c
    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p1, p1, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object p1, p1, Lcom/android/server/wm/AppCompatOverrides;->mReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->inTransitionSelfOrParent()Z

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalReachabilityEnabled(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_127

    if-eqz v1, :cond_ba

    goto/16 :goto_127

    :cond_ba
    iget-object v1, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mLetterboxInnerBoundsSupplier:Ljava/util/function/Supplier;

    if-eqz v1, :cond_c5

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    goto :goto_ca

    :cond_c5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    :goto_ca
    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-gt v2, p2, :cond_d3

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v2, p2, :cond_d3

    goto :goto_127

    :cond_d3
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v2, v2, Lcom/android/server/wm/AppCompatController;->mDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndSeparatingHinge()Z

    move-result v2

    iget-object v3, v7, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    move-result v3

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget-object p1, p1, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    iget-object v7, v7, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    if-le v8, p2, :cond_105

    invoke-virtual {v7, v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    move-result p2

    if-eqz v2, :cond_f0

    goto :goto_f1

    :cond_f0
    move v5, v6

    :goto_f1
    sub-int/2addr p2, v5

    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {v7, p2, v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(IZ)V

    if-ne v3, v6, :cond_fd

    const/4 p2, 0x5

    goto :goto_ff

    :cond_fd
    const/16 p2, 0x8

    :goto_ff
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->logLetterboxPositionChange(I)V

    iput-boolean v6, p1, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    goto :goto_124

    :cond_105
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v1, p2, :cond_124

    invoke-virtual {v7, v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    move-result p2

    if-eqz v2, :cond_111

    move v1, v5

    goto :goto_112

    :cond_111
    move v1, v6

    :goto_112
    add-int/2addr p2, v1

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v7, p2, v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(IZ)V

    if-ne v3, v6, :cond_11e

    const/4 p2, 0x7

    goto :goto_11f

    :cond_11e
    const/4 p2, 0x6

    :goto_11f
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->logLetterboxPositionChange(I)V

    iput-boolean v6, p1, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    :cond_124
    :goto_124
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    :cond_127
    :goto_127
    return-void
.end method

.method public final logLetterboxPositionChange(I)V
    .registers 5

    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x1ce

    invoke-static {v2, v1, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    iget-object p1, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_29

    :cond_1d
    iget-object p1, v0, Lcom/android/server/wm/ActivityMetricsLogger;->mPackageUidToCompatStateInfo:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;

    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq p0, v0, :cond_2a

    :goto_29
    return-void

    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatState(Z)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppCompatStateInternal(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;)V

    return-void
.end method
