.class public final Lcom/android/server/tv/TvInputManagerService$SessionState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final callingPid:I

.field public final callingUid:I

.field public final client:Landroid/media/tv/ITvInputClient;

.field public final componentName:Landroid/content/ComponentName;

.field public currentChannel:Landroid/net/Uri;

.field public hardwareSessionToken:Landroid/os/IBinder;

.field public final inputId:Ljava/lang/String;

.field public isCurrent:Z

.field public isMainSession:Z

.field public final isRecordingSession:Z

.field public isVisible:Z

.field public final seq:I

.field public session:Landroid/media/tv/ITvInputSession;

.field public final sessionId:Ljava/lang/String;

.field public final sessionToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;

.field public final tvAppAttributionSource:Landroid/content/AttributionSource;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;IIIILjava/lang/String;Landroid/content/AttributionSource;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->currentChannel:Landroid/net/Uri;

    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isVisible:Z

    iput-boolean p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isMainSession:Z

    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;

    iput-boolean p5, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    iput-object p6, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    iput p7, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    iput p8, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    iput p9, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingPid:I

    iput p10, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    iput-object p11, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionId:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->tvAppAttributionSource:Landroid/content/AttributionSource;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw p0
.end method
