.class public final Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/TipsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/TipsManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    const-string/jumbo p1, "TipsManagerService"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    new-instance v2, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    iget-object v3, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;-><init>(Lcom/android/server/sepunion/TipsManagerService;)V

    iput-object v2, v1, Lcom/android/server/sepunion/TipsManagerService;->mTipsHandler:Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1b

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_1b
    move-exception p0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method
