.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda6;->f$0:I

    iput p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 10

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda6;->f$0:I

    iget v3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda6;->f$1:I

    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    iget-object v0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->isVisibleBackgroundUserOnDisplay(I)Z

    move-result p0

    if-eqz p0, :cond_11

    return-void

    :cond_11
    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    const p0, -0x7ff0001

    and-int/2addr p0, v3

    if-eqz p0, :cond_31

    const-string/jumbo p1, "StatusBarManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unknown disable flags: 0x"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p0}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {p1, p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    iget-object p0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_34
    iget v2, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    iget-object v6, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIIIILandroid/os/IBinder;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_3f
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_34 .. :try_end_42} :catchall_3f

    throw p1
.end method
