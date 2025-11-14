.class public final Lcom/android/server/usb/UsbService$PackageUninstallMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUidRemoved(I)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mUsbDisableRequesters:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    iget-object v1, v1, Lcom/android/server/usb/UsbService;->mUsbDisableRequesters:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    iget-object v3, v3, Lcom/android/server/usb/UsbService;->mUsbDisableRequesters:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbDataSignalDisableRequesters;

    if-eqz v3, :cond_11

    iget-object v4, v3, Lcom/android/server/usb/UsbDataSignalDisableRequesters;->mExternalUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v4, v3, Lcom/android/server/usb/UsbDataSignalDisableRequesters;->mExternalUids:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_45

    iget-object v3, v3, Lcom/android/server/usb/UsbDataSignalDisableRequesters;->mInternalReasons:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_45

    move v3, v5

    goto :goto_46

    :cond_45
    const/4 v3, 0x0

    :goto_46
    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    new-instance v4, Landroid/hardware/usb/IUsbOperationInternal$Default;

    invoke-direct {v4}, Landroid/hardware/usb/IUsbOperationInternal$Default;-><init>()V

    invoke-virtual {v3, v2, v5, v5, v4}, Lcom/android/server/usb/UsbService;->enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)Z

    goto :goto_11

    :catchall_53
    move-exception p0

    goto :goto_57

    :cond_55
    monitor-exit v0

    return-void

    :goto_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_5 .. :try_end_58} :catchall_53

    throw p0
.end method
