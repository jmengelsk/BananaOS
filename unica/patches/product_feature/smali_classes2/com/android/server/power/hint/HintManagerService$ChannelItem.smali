.class public final Lcom/android/server/power/hint/HintManagerService$ChannelItem;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mConfig:Landroid/hardware/power/ChannelConfig;

.field public mLinked:Z

.field public final mTgid:I

.field public final mToken:Landroid/os/IBinder;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;IILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iput p2, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mTgid:I

    iput p3, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mUid:I

    iput-object p4, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mToken:Landroid/os/IBinder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mLinked:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mConfig:Landroid/hardware/power/ChannelConfig;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mTgid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/power/hint/HintManagerService;->removeChannelItem(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final closeChannel()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mLinked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mLinked:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mConfig:Landroid/hardware/power/ChannelConfig;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mTgid:I

    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mUid:I

    invoke-interface {v0, v1, v2}, Landroid/hardware/power/IPower;->closeSessionChannel(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mConfig:Landroid/hardware/power/ChannelConfig;

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to close session channel!"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final openChannel()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mLinked:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mLinked:Z

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client already dead"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mConfig:Landroid/hardware/power/ChannelConfig;

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    iget v1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mTgid:I

    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mUid:I

    invoke-interface {v0, v1, v2}, Landroid/hardware/power/IPower;->getSessionChannel(II)Landroid/hardware/power/ChannelConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mConfig:Landroid/hardware/power/ChannelConfig;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget v2, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mTgid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->mUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/android/server/power/hint/HintManagerService;->removeChannelItem(Ljava/lang/Integer;Ljava/lang/Integer;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create session channel!"

    invoke-direct {p0, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    return-void
.end method
