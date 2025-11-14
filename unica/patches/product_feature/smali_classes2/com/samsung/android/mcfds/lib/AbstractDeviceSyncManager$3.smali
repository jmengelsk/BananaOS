.class public final Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const-string/jumbo p1, "[MCF_DS_LIB]_DeviceSyncManager"

    const-string/jumbo v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    const/4 v0, 0x3

    iput v0, p1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    sget v1, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub;->$r8$clinit:I

    if-nez p2, :cond_14

    const/4 p2, 0x0

    goto :goto_2d

    :cond_14
    const-string/jumbo v1, "com.samsung.android.mcfds.lib.IMcfDeviceSyncService"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_25

    instance-of v2, v1, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    if-eqz v2, :cond_25

    move-object p2, v1

    check-cast p2, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    goto :goto_2d

    :cond_25
    new-instance v1, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p2, v1, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    move-object p2, v1

    :goto_2d
    iput-object p2, p1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    iget-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-static {p1, v0}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->access$200(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;I)V

    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceStateListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CALLBACK"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/16 v0, 0xa

    iput v0, p2, Landroid/os/Message;->what:I

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string/jumbo p1, "[MCF_DS_LIB]_DeviceSyncManager"

    const-string/jumbo v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    const/4 v0, 0x1

    iput v0, p1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-static {p0, v0}, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->access$200(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;I)V

    return-void
.end method
