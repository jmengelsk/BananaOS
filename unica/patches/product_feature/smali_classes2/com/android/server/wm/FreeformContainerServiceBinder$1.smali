.class public final Lcom/android/server/wm/FreeformContainerServiceBinder$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/FreeformContainerServiceBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FreeformContainerServiceBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder$1;->this$0:Lcom/android/server/wm/FreeformContainerServiceBinder;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder$1;->this$0:Lcom/android/server/wm/FreeformContainerServiceBinder;

    iget-boolean v0, p1, Lcom/android/server/wm/FreeformContainerServiceBinder;->mIsServiceRunning:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "service_disconnected"

    invoke-virtual {p1, v0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->unbindServiceIfNeeded(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder$1;->this$0:Lcom/android/server/wm/FreeformContainerServiceBinder;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->bindServiceIfNeeded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
