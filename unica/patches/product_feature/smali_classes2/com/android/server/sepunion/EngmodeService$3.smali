.class public final Lcom/android/server/sepunion/EngmodeService$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/EngmodeService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/EngmodeService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .registers 8

    const-string/jumbo p1, "engmode_service"

    const-string/jumbo v0, "Network is available"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    iget-object v1, v0, Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;

    if-nez v1, :cond_2e

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, v0, Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;

    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    new-instance v0, Lcom/android/server/sepunion/EngmodeService$1;

    invoke-direct {v0, p1}, Lcom/android/server/sepunion/EngmodeService$1;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    iput-object v0, p1, Lcom/android/server/sepunion/EngmodeService;->mRunTimeTask:Lcom/android/server/sepunion/EngmodeService$1;

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService;->mRunTimeTask:Lcom/android/server/sepunion/EngmodeService$1;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x1499700

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void

    :cond_2e
    iget-boolean v1, v0, Lcom/android/server/sepunion/EngmodeService;->mNeedUpdate:Z

    if-nez v1, :cond_39

    const-string/jumbo p0, "There is no need for update"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    iget-object v0, v0, Lcom/android/server/sepunion/EngmodeService;->mTimeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_48

    const-string/jumbo p0, "Previous thread is alive, skip this time"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_48
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    iget-object p1, p1, Lcom/android/server/sepunion/EngmodeService;->mRunTimeTask:Lcom/android/server/sepunion/EngmodeService$1;

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    new-instance v0, Lcom/android/server/sepunion/EngmodeService$1;

    invoke-direct {v0, p1}, Lcom/android/server/sepunion/EngmodeService$1;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    iput-object v0, p1, Lcom/android/server/sepunion/EngmodeService;->mRunTimeTask:Lcom/android/server/sepunion/EngmodeService$1;

    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    iget-object p1, p1, Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p1, Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService;->mTimerObserve:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService;->mRunTimeTask:Lcom/android/server/sepunion/EngmodeService$1;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x1499700

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_76} :catch_77

    return-void

    :catch_77
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .registers 2

    const-string/jumbo p0, "engmode_service"

    const-string/jumbo p1, "Network isn\'t available"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
