.class public final Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    return-void
.end method


# virtual methods
.method public final sendMessage(Landroid/os/Message;)I
    .registers 6

    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->this$0:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    const/4 v0, -0x1

    const-string/jumbo v1, "[MCF_DS_LIB]_DeviceSyncManager"

    if-nez p0, :cond_11

    const-string/jumbo p0, "sendMessage : Service is invalid"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_11
    :try_start_11
    check-cast p0, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService$Stub$Proxy;->internalCommand(Landroid/os/Message;)I

    move-result p0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return p0

    :catch_18
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendMessage : [ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ] "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
