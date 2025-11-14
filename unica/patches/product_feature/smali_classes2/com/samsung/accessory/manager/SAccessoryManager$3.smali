.class public final Lcom/samsung/accessory/manager/SAccessoryManager$3;
.super Landroid/os/UEventObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 9

    const-string/jumbo v0, "USBPD_IDS"

    const-string/jumbo v1, "SAccessoryManager_SAccessoryManager"

    const-string/jumbo v2, "SWITCH_STATE"

    const-string/jumbo v3, "UEventObserver, event : "

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    iget-boolean v4, v4, Lcom/samsung/accessory/manager/SAccessoryManager;->mIsFactory:Z

    if-nez v4, :cond_4

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->attachUsbTypeC(I)V

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v4, "b001b7ff"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    iget-boolean v5, v5, Lcom/samsung/accessory/manager/SAccessoryManager;->isUsbReady:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    if-eqz v0, :cond_5

    array-length v5, v0

    const/4 v7, 0x2

    if-ne v5, v7, :cond_5

    const/4 v5, 0x0

    aget-object v7, v0, v5

    const-string v8, "04e8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    new-array v7, v7, [B

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v7, v0

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    aget-byte v7, v0, v5

    aget-byte v5, v4, v5

    if-ne v7, v5, :cond_3

    aget-byte v0, v0, v6

    aget-byte v5, v4, v6

    if-lt v0, v5, :cond_3

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    if-gt v0, v4, :cond_3

    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->attachUsbTypeC(I)V

    return-void

    :cond_3
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_1
    const-string/jumbo p0, "uEvent switch state is not related with usb auth or Factory binary"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Could not parse switch state from event "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method
