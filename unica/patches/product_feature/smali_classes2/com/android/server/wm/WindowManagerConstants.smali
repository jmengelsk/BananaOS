.class public final Lcom/android/server/wm/WindowManagerConstants;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDeviceConfig:Landroid/provider/DeviceConfigInterface;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mIgnoreActivityOrientationRequestLargeScreen:Z

.field public mIgnoreActivityOrientationRequestSmallScreen:Z

.field public final mListenerAndroid:Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;

.field public final mListenerWindowManager:Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;

.field public mOptOutIgnoreActivityOrientationRequestPackages:Landroid/util/ArraySet;

.field public mSystemGestureExcludedByPreQStickyImmersive:Z

.field public mSystemGestureExclusionLimitDp:I

.field public mSystemGestureExclusionLogDebounceTimeoutMillis:J

.field public final mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerGlobalLock;Ljava/lang/Runnable;Landroid/provider/DeviceConfigInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerConstants;->mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    new-instance p1, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerConstants;I)V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerAndroid:Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerConstants;I)V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerWindowManager:Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    const-string/jumbo v0, "WINDOW MANAGER CONSTANTS (dumpsys window constants):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "system_gesture_exclusion_log_debounce_millis"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    const-string/jumbo v4, "system_gesture_exclusion_limit_dp"

    invoke-static {v2, v3, p1, v0, v4}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    const-string/jumbo v3, "system_gestures_excluded_by_pre_q_sticky_immersive"

    invoke-static {p1, v2, v0, v3, v1}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExcludedByPreQStickyImmersive:Z

    const-string/jumbo v3, "ignore_activity_orientation_request_screens"

    invoke-static {p1, v2, v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mIgnoreActivityOrientationRequestSmallScreen:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "all"

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mIgnoreActivityOrientationRequestLargeScreen:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "large"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "none"

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mOptOutIgnoreActivityOrientationRequestPackages:Landroid/util/ArraySet;

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "opt_out_ignore_activity_orientation_request_list"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerConstants;->mOptOutIgnoreActivityOrientationRequestPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final updateIgnoreActivityOrientationRequest()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v1, "window_manager"

    const-string/jumbo v2, "ignore_activity_orientation_request"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v4, "ignore_activity_orientation_request_screens"

    invoke-interface {v2, v1, v4}, Landroid/provider/DeviceConfigInterface;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "all"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v0, v2

    if-nez v0, :cond_0

    const-string/jumbo v2, "large"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mIgnoreActivityOrientationRequestSmallScreen:Z

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerConstants;->mIgnoreActivityOrientationRequestLargeScreen:Z

    return-void
.end method

.method public final updateOptOutIgnoreActivityOrientationRequestList()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v1, "opt_out_ignore_activity_orientation_request_list"

    const-string v2, ""

    const-string/jumbo v3, "window_manager"

    invoke-interface {v0, v3, v1, v2}, Landroid/provider/DeviceConfigInterface;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mOptOutIgnoreActivityOrientationRequestPackages:Landroid/util/ArraySet;

    return-void

    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerConstants;->mOptOutIgnoreActivityOrientationRequestPackages:Landroid/util/ArraySet;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
