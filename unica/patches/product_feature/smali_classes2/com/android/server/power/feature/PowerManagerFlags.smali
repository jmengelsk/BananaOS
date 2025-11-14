.class public final Lcom/android/server/power/feature/PowerManagerFlags;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDisableFrozenProcessWakelocks:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mEarlyScreenTimeoutDetectorFlagState:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mEnableScreenTimeoutPolicyListenerApi:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mFrameworkWakelockInfo:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mMoveWscLoggingToNotifier:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mPerDisplayWakeByTouch:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mPolicyReasonInDisplayPowerRequest:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mWakelockAttributionViaWorkchain:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    const-string/jumbo v2, "com.android.server.power.feature.flags.enable_early_screen_timeout_detector"

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mEarlyScreenTimeoutDetectorFlagState:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    const-string/jumbo v2, "com.android.server.power.feature.flags.enable_screen_timeout_policy_listener_api"

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mEnableScreenTimeoutPolicyListenerApi:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    const-string/jumbo v2, "com.android.server.power.feature.flags.improve_wakelock_latency"

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    const-string/jumbo v2, "com.android.server.power.feature.flags.per_display_wake_by_touch"

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mPerDisplayWakeByTouch:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    const-string/jumbo v2, "com.android.server.power.feature.flags.framework_wakelock_info"

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mFrameworkWakelockInfo:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    const-string/jumbo v2, "com.android.server.power.feature.flags.policy_reason_in_display_power_request"

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mPolicyReasonInDisplayPowerRequest:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    const-string/jumbo v2, "com.android.server.power.feature.flags.move_wsc_logging_to_notifier"

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mMoveWscLoggingToNotifier:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    const-string/jumbo v2, "com.android.server.power.feature.flags.wakelock_attribution_via_workchain"

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mWakelockAttributionViaWorkchain:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    const-string/jumbo v2, "com.android.server.power.feature.flags.disable_frozen_process_wakelocks"

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mDisableFrozenProcessWakelocks:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .registers 5

    const-string/jumbo v0, "PowerManagerFlags:"

    const-string v1, " "

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mEarlyScreenTimeoutDetectorFlagState:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mPerDisplayWakeByTouch:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mFrameworkWakelockInfo:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mMoveWscLoggingToNotifier:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mWakelockAttributionViaWorkchain:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mDisableFrozenProcessWakelocks:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
