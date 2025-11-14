.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mAdServiceId:Ljava/lang/String;

.field public final mCallingUid:I

.field public final mClient:Landroid/media/tv/ad/ITvAdClient;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mSeq:I

.field public mSession:Landroid/media/tv/ad/ITvAdSession;

.field public final mSessionToken:Landroid/os/IBinder;

.field public final mType:Ljava/lang/String;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/media/tv/ad/ITvAdClient;III)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSessionToken:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mAdServiceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mType:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mComponent:Landroid/content/ComponentName;

    iput-object p6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;

    iput p7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    iput p8, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mCallingUid:I

    iput p9, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mUserId:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_2a

    if-eqz v2, :cond_21

    :try_start_11
    iget v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    invoke-interface {v2, v3}, Landroid/media/tv/ad/ITvAdClient;->onSessionReleased(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_17
    .catchall {:try_start_11 .. :try_end_16} :catchall_2a

    goto :goto_21

    :catch_17
    move-exception v2

    :try_start_18
    const-string/jumbo v3, "TvInteractiveAppManagerService"

    const-string/jumbo v4, "error in onSessionReleased"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    :goto_21
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSessionToken:Landroid/os/IBinder;

    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mUserId:I

    invoke-virtual {v1, p0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeAdSessionStateLocked(ILandroid/os/IBinder;)V

    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_2a

    throw p0
.end method
