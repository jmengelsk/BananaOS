.class public final synthetic Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usb/UsbService$Lifecycle;

.field public final synthetic f$1:Lcom/android/server/SystemService$TargetUser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbService$Lifecycle;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/usb/UsbService$Lifecycle;

    iput-object p2, p0, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/SystemService$TargetUser;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/usb/UsbService$Lifecycle;

    iget-object p0, p0, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/SystemService$TargetUser;

    iget-object v0, v0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p0

    sget v1, Lcom/android/server/usb/UsbService;->$r8$clinit:I

    invoke-virtual {v0, p0}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    return-void
.end method
