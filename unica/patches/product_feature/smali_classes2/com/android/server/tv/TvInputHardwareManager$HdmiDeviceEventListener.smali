.class public final Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;
.super Landroid/hardware/hdmi/IHdmiDeviceEventListener$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiDeviceEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 6

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_b
    if-ge v1, v0, :cond_1c

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v3

    if-ne v3, p1, :cond_b

    return-object v2

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onStatusChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .registers 9

    const-string/jumbo v0, "The list already contains "

    const-string/jumbo v1, "The list doesn\'t contain "

    const-string/jumbo v2, "The list doesn\'t contain "

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isSourceType()Z

    move-result v3

    if-nez v3, :cond_10

    return-void

    :cond_10
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v3, v3, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p2, v4, :cond_8f

    const/4 v0, 0x2

    if-eq p2, v0, :cond_60

    const/4 v0, 0x3

    if-eq p2, v0, :cond_24

    const/4 p2, 0x0

    move-object v0, p2

    move p2, v5

    goto/16 :goto_a4

    :cond_24
    :try_start_24
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_54

    const-string/jumbo p0, "TvInputHardwareManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; ignoring."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :catchall_51
    move-exception p0

    goto/16 :goto_e0

    :cond_54
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object p2, p2, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x6

    :goto_5e
    move-object v0, p1

    goto :goto_a4

    :cond_60
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8d

    const-string/jumbo p0, "TvInputHardwareManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; ignoring."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :cond_8d
    const/4 p2, 0x5

    goto :goto_5e

    :cond_8f
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->findHdmiDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p2

    if-nez p2, :cond_c7

    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object p2, p2, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x4

    goto :goto_5e

    :goto_a4
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    invoke-virtual {v1, p2, v5, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object p1

    if-eqz p1, :cond_bc

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_c5

    :cond_bc
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c5
    monitor-exit v3

    return-void

    :cond_c7
    const-string/jumbo p0, "TvInputHardwareManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; ignoring."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :goto_e0
    monitor-exit v3
    :try_end_e1
    .catchall {:try_start_24 .. :try_end_e1} :catchall_51

    throw p0
.end method
