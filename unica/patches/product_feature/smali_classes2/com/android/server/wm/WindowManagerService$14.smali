.class public final Lcom/android/server/wm/WindowManagerService$14;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final onAnimationCancelled()V
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mShellRemoteAnimRunner#onAnimationCancelled, caller="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    const-string/jumbo v1, "WindowManager"

    invoke-static {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "mShellRemoteAnimRunner#onAnimationStart, caller="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x3

    const-string/jumbo p2, "WindowManager"

    invoke-static {p1, p0, p2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method
