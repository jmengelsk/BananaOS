.class public final Lcom/android/server/media/projection/MediaProjectionManagerService$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

.field public final synthetic val$callback:Landroid/media/projection/IMediaProjectionWatcherCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$2;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$2;->val$callback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$2;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$2;->val$callback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    invoke-static {v0, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->-$$Nest$mremoveCallback(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    return-void
.end method
