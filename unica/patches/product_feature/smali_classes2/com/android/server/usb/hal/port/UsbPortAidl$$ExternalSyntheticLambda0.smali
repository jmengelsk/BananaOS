.class public final synthetic Lcom/android/server/usb/hal/port/UsbPortAidl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usb/hal/port/UsbPortAidl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/hal/port/UsbPortAidl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/hal/port/UsbPortAidl;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/hal/port/UsbPortAidl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Usb AIDL hal service died"

    sget v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo v1, "UsbPortManager"

    const/4 v2, 0x6

    invoke-static {v2, v1, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/usb/hal/port/UsbPortAidl;->connectToProxy()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
