.class public final Lcom/android/server/power/ScreenCurtainController$CallStateCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ScreenCurtainController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ScreenCurtainController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;->this$0:Lcom/android/server/power/ScreenCurtainController;

    iget-object v0, v0, Lcom/android/server/power/ScreenCurtainController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;->this$0:Lcom/android/server/power/ScreenCurtainController;

    iget-object v2, v2, Lcom/android/server/power/ScreenCurtainController;->mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;->this$0:Lcom/android/server/power/ScreenCurtainController;

    iget-object v3, v3, Lcom/android/server/power/ScreenCurtainController;->mClock:Lcom/android/server/power/ScreenCurtainController$Clock;

    check-cast v3, Lcom/android/server/power/ScreenCurtainController$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;->this$0:Lcom/android/server/power/ScreenCurtainController;

    iget v3, v2, Lcom/android/server/power/ScreenCurtainController;->mLastScreenCurtainDisabledReason:I

    if-ne v3, v1, :cond_1

    iget v3, v2, Lcom/android/server/power/ScreenCurtainController;->mLastCallState:I

    if-ne v3, v1, :cond_1

    const-string/jumbo v1, "ScreenCurtainController"

    const-string/jumbo v3, "screen curtain auto enable scheduled"

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v2, Lcom/android/server/power/ScreenCurtainController;->mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v2, Lcom/android/server/power/ScreenCurtainController;->mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/power/ScreenCurtainController;->mClock:Lcom/android/server/power/ScreenCurtainController$Clock;

    check-cast v2, Lcom/android/server/power/ScreenCurtainController$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController$CallStateCallback;->this$0:Lcom/android/server/power/ScreenCurtainController;

    iput p1, p0, Lcom/android/server/power/ScreenCurtainController;->mLastCallState:I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
