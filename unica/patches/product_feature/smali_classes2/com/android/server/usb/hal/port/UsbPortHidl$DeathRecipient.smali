.class public final Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/hal/port/UsbPortHidl;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/hal/port/UsbPortHidl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;->this$0:Lcom/android/server/usb/hal/port/UsbPortHidl;

    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .registers 5

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-nez v0, :cond_25

    const-string/jumbo v0, "Usb hal service died cookie: "

    invoke-static {p1, p2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    const/4 v0, 0x6

    invoke-static {v0, p2, p1}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;->this$0:Lcom/android/server/usb/hal/port/UsbPortHidl;

    iget-object p1, p1, Lcom/android/server/usb/hal/port/UsbPortHidl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1b
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;->this$0:Lcom/android/server/usb/hal/port/UsbPortHidl;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl;->mProxy:Landroid/hardware/usb/V1_0/IUsb;

    monitor-exit p1

    return-void

    :catchall_22
    move-exception p0

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    throw p0

    :cond_25
    return-void
.end method
