.class public abstract Lcom/android/server/wm/WindowOrientationListener$OrientationJudge;
.super Landroid/hardware/SensorEventCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public abstract dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public abstract getProposedRotationLocked()I
.end method

.method public final onFlushCompleted(Landroid/hardware/Sensor;)V
    .registers 2

    return-void
.end method

.method public abstract onTouchEndLocked(J)V
.end method

.method public abstract onTouchStartLocked()V
.end method

.method public abstract resetLocked()V
.end method
