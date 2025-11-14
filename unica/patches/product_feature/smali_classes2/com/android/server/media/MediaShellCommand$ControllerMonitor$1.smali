.class public final Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;
.super Landroid/os/HandlerThread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$1:Lcom/android/server/media/MediaShellCommand$ControllerMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;->this$1:Lcom/android/server/media/MediaShellCommand$ControllerMonitor;

    const-string/jumbo p1, "MediaCb"

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onLooperPrepared()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;->this$1:Lcom/android/server/media/MediaShellCommand$ControllerMonitor;

    iget-object v1, v0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    iget-object v0, v0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;->this$1:Lcom/android/server/media/MediaShellCommand$ControllerMonitor;

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    iget-object p0, p0, Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;

    const-string v0, "Error registering monitor callback"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
