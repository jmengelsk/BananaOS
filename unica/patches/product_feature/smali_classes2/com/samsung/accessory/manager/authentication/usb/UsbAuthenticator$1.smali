.class public final Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;I)V
    .registers 3

    iput p2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_54

    const-string/jumbo v0, "SAccessoryManager_UsbAuthenticator"

    const-string/jumbo v1, "onAuthenticationStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->startAuthentication$1(JZ)V

    :cond_26
    return-void

    :pswitch_27  #0x0
    const-string/jumbo v0, "SAccessoryManager_UsbAuthenticator"

    const-string/jumbo v1, "onAuthenticationStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    iget-boolean v0, v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPreparing:Z

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPreparing:Z

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_52
    return-void

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_27  #00000000
    .end packed-switch
.end method
