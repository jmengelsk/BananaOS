.class public final Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mCallbacks:Lcom/android/server/print/UserState;

.field public final synthetic this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintServiceRecommendationService;Lcom/android/server/print/UserState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    iput-object p2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->mCallbacks:Lcom/android/server/print/UserState;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    iget-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    iget-object p1, p1, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-static {p2}, Landroid/printservice/recommendation/IRecommendationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/recommendation/IRecommendationService;

    move-result-object p2

    iput-object p2, v0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1a

    :try_start_d
    iget-object p2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    iget-object p2, p2, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    new-instance v0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;-><init>(Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;)V

    invoke-interface {p2, v0}, Landroid/printservice/recommendation/IRecommendationService;->registerCallbacks(Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_19} :catch_1c
    .catchall {:try_start_d .. :try_end_19} :catchall_1a

    goto :goto_25

    :catchall_1a
    move-exception p0

    goto :goto_27

    :catch_1c
    move-exception p0

    :try_start_1d
    const-string/jumbo p2, "RemotePrintServiceRecS"

    const-string v0, "Could not register callbacks"

    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    monitor-exit p1

    return-void

    :goto_27
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_1a

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string/jumbo p1, "RemotePrintServiceRecS"

    const-string/jumbo v0, "Unexpected termination of connection"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    iget-object p1, p1, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_e
    iget-object p0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    monitor-exit p1

    return-void

    :catchall_15
    move-exception p0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw p0
.end method
