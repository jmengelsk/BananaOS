.class public final Lcom/samsung/android/camera/scpm/ScpmReceiver$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/scpm/ScpmReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    return-void
.end method


# virtual methods
.method public final onListReceived(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    iget-object p2, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    iput v0, p2, Landroid/os/Message;->what:I

    const/16 v0, 0x1e

    iput v0, p2, Landroid/os/Message;->arg1:I

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onRegistered(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->this$0:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    if-eq p1, v0, :cond_2

    const-string v0, "CameraService/ScpmReceiver"

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    const-string/jumbo p0, "onRegistered - not acceptable result."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo p1, "MSG_REGISTER_FAILED - retry after 1 hour"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    const-wide/32 v0, 0x36ee80

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    const-string/jumbo p1, "MSG_SCPM_UNAVAILABLE - retry after 5 min"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    const-wide/32 v0, 0x493e0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
