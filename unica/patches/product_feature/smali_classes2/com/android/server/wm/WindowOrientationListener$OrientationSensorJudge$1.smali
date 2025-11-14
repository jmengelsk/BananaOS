.class public final Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;


# instance fields
.field public final mCallbackId:I

.field public final synthetic this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

.field public final synthetic val$reportedRotation:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    iput p2, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->val$reportedRotation:I

    iget p1, p1, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    iput p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->mCallbackId:I

    return-void
.end method


# virtual methods
.method public final finalizeRotationIfFresh(I)V
    .registers 5

    iget v0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->mCallbackId:I

    iget-object v1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    iget v2, v1, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCurrentCallbackId:I

    if-ne v0, v2, :cond_17

    iget-object v0, v1, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/wm/WindowOrientationListener;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    iget-object v1, v1, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->mCancelRotationResolverRequest:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge;->finalizeRotation(I)V

    return-void

    :cond_17
    const-string p0, "An outdated callback received ["

    const-string p1, " vs. "

    const-string/jumbo v1, "]. Ignoring it."

    invoke-static {v0, v2, p0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "WindowOrientationListener"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onFailure(I)V
    .registers 2

    iget p1, p0, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->val$reportedRotation:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->finalizeRotationIfFresh(I)V

    return-void
.end method

.method public final onSuccess(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrientationListener$OrientationSensorJudge$1;->finalizeRotationIfFresh(I)V

    return-void
.end method
