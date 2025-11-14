.class public final Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/RFCommServiceLauncher;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/RFCommServiceLauncher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;->this$0:Lcom/android/server/remoteappmode/RFCommServiceLauncher;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    const-string/jumbo p1, "RFCommServiceLauncher"

    const-string p2, "HotspotRFCommService is connected"

    invoke-static {p1, p2}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;->this$0:Lcom/android/server/remoteappmode/RFCommServiceLauncher;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mBounded:Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    const-string/jumbo p1, "RFCommServiceLauncher"

    const-string v0, "HotspotRFCommService is disconnected"

    invoke-static {p1, v0}, Lcom/android/server/remoteappmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;->this$0:Lcom/android/server/remoteappmode/RFCommServiceLauncher;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mBounded:Z

    new-instance v0, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/remoteappmode/RFCommServiceLauncher$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/remoteappmode/RFCommServiceLauncher$1;)V

    const-wide/16 v1, 0xbb8

    iget-object p0, p1, Lcom/android/server/remoteappmode/RFCommServiceLauncher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
