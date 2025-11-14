.class public final Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;
.super Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mChargingFunctions:Z

.field public final mFunctions:J

.field public final mRequest:I

.field public final synthetic this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    invoke-direct {p0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;IJZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    invoke-direct {p0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback$Stub;-><init>()V

    iput p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->mRequest:I

    iput-wide p3, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->mFunctions:J

    iput-boolean p5, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->mChargingFunctions:Z

    return-void
.end method


# virtual methods
.method public final getCurrentUsbFunctionsCb(JI)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
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

.method public final getUsbSpeedCb(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getUsbSpeedCb(I)V

    return-void
.end method

.method public final setCurrentUsbFunctionsCb(JI)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    iget-object v0, v0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    iget v7, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->mRequest:I

    iget-wide v5, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->mFunctions:J

    iget-boolean v8, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->mChargingFunctions:Z

    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-wide v3, p1

    move v2, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setCurrentUsbFunctionsCb(IJJIZ)V

    return-void
.end method
