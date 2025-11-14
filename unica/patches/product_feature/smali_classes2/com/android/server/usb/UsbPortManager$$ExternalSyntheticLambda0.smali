.class public final synthetic Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/usb/UsbPortManager;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;I)V
    .registers 4

    iput p3, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/UsbPortManager;

    iput-object p2, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_24

    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/UsbPortManager;

    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v2, "android.permission.MANAGE_USB"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :pswitch_14  #0x0
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/UsbPortManager;

    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v2, "android.permission.MANAGE_USB"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_14  #00000000
    .end packed-switch
.end method
