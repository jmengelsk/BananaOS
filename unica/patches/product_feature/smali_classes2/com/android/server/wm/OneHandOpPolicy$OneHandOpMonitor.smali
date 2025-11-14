.class public final Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

.field public final synthetic this$0:Lcom/android/server/wm/OneHandOpPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OneHandOpPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    iget-object v0, v0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    const-string/jumbo v3, "OneHandOpPolicy"

    const-string/jumbo v4, "OneHandOp service has died unexpectedly"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/view/MagnificationSpec;

    invoke-direct {v3}, Landroid/view/MagnificationSpec;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5}, Landroid/view/MagnificationSpec;->initialize(FFF)V

    iget-object v4, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5, v1}, Lcom/android/server/wm/OneHandOpPolicy;->changeDisplayScaleLocked(Landroid/view/MagnificationSpec;ZLandroid/view/IInputFilter;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    iget-object v0, v0, Lcom/android/server/wm/OneHandOpPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "any_screen_running"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    iget-boolean v1, v0, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/OneHandOpPolicy;->startService(I)V

    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mRestartRunnable:Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
