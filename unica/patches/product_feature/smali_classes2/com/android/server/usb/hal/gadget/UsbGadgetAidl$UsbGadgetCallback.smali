.class public final Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;
.super Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mChargingFunctions:Z

.field public final mFunctions:J

.field public final mRequest:I

.field public final synthetic this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;

    invoke-direct {p0}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;IJZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;

    invoke-direct {p0}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;-><init>()V

    iput p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mRequest:I

    iput-wide p3, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mFunctions:J

    iput-boolean p5, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mChargingFunctions:Z

    return-void
.end method


# virtual methods
.method public final getCurrentUsbFunctionsCb(JIJ)V
    .locals 4

    const-string/jumbo v0, "UsbDeviceManager"

    const-string v1, " ,transactionId:"

    const-string v2, " ,status:"

    if-nez p3, :cond_0

    const-string/jumbo v3, "Usb getCurrentUsbFunctionsCb ,functions:"

    invoke-static {p3, v3, p1, p2, v2}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    sget-object p5, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/4 p5, 0x4

    invoke-static {p5, v0, p4}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "Usb getCurrentUsbFunctionsCb failed ,functions:"

    invoke-static {p3, v3, p1, p2, v2}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    sget-object p5, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/4 p5, 0x6

    invoke-static {p5, v0, p4}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;

    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    if-ne p3, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 p3, 0x10

    invoke-virtual {p0, p3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {p0, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p3

    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, p3, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "cb628c69682659911bca5c1d04042adba7f0de4b"

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getUsbSpeedCb(IJ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getUsbSpeedCb speed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,transactionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo p3, "UsbDeviceManager"

    const/4 v0, 0x4

    invoke-static {v0, p3, p2}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;

    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getUsbSpeedCb(I)V

    return-void
.end method

.method public final resetCb(IJ)V
    .locals 4

    const-string/jumbo v0, "UsbDeviceManager"

    const-string v1, " ,transactionId:"

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Usb resetCb status:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/4 p3, 0x4

    invoke-static {p3, v0, p2}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Usb resetCb status"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/4 p3, 0x6

    invoke-static {p3, v0, p2}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;

    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->resetCb(I)V

    return-void
.end method

.method public final setCurrentUsbFunctionsCb(JIJ)V
    .locals 8

    const-string/jumbo v0, "UsbDeviceManager"

    const-string v1, " ,transactionId:"

    const-string v2, " ,status:"

    if-nez p3, :cond_0

    const-string/jumbo v3, "Usb setCurrentUsbFunctionsCb ,functions:"

    invoke-static {p3, v3, p1, p2, v2}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    sget-object p5, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/4 p5, 0x4

    invoke-static {p5, v0, p4}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "Usb setCurrentUsbFunctionsCb failed ,functions:"

    invoke-static {p3, v3, p1, p2, v2}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    sget-object p5, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/4 p5, 0x6

    invoke-static {p5, v0, p4}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p4, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;

    iget-object p4, p4, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    iget v6, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mRequest:I

    iget-wide v4, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mFunctions:J

    iget-boolean v7, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl$UsbGadgetCallback;->mChargingFunctions:Z

    iget-object v0, p4, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-wide v2, p1

    move v1, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setCurrentUsbFunctionsCb(IJJIZ)V

    return-void
.end method
