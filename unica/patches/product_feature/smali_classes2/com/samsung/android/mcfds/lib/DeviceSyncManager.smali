.class public final Lcom/samsung/android/mcfds/lib/DeviceSyncManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCoreInterface:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;

.field public mListener:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;

.field public mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

.field public final mServiceConnection:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;

.field public mServiceState:I

.field public final mServiceStateListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;-><init>(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;)V

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;

    new-instance v0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;-><init>(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;)V

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceStateListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;

    new-instance v0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;-><init>(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;)V

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceConnection:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;

    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static access$200(Lcom/samsung/android/mcfds/lib/DeviceSyncManager;I)V
    .registers 6

    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mListener:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;

    if-eqz p0, :cond_4f

    const/4 v0, 0x1

    const-string/jumbo v1, "[MCF_DS_SYS]_McfDsManager"

    if-eq p1, v0, :cond_46

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    if-eq p1, v0, :cond_31

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_16

    goto :goto_4c

    :cond_16
    const-string/jumbo p1, "bindMcf : SERVICE_STATE_AVAILABLE"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    invoke-static {p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4c

    :cond_2a
    const-string/jumbo p1, "bindMcf : SERVICE_STATE_UNAVAILABLE"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :cond_31
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "bindMcf : SERVICE_STATE_CONNECTED (bindReason: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;->mBindReason:I

    const-string v3, ")"

    invoke-static {v0, v3, v1, p1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;->mBindReason:I

    invoke-virtual {v2, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->initMcfDeviceSyncMainController(I)V

    goto :goto_4c

    :cond_46
    const-string/jumbo p1, "bindMcf : SERVICE_STATE_DISCONNECTED"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    :goto_4c
    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;->mBindReason:I

    :cond_4f
    return-void
.end method
