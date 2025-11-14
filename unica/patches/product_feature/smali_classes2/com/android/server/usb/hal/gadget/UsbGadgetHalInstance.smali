.class public abstract Lcom/android/server/usb/hal/gadget/UsbGadgetHalInstance;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static getInstance(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/hal/gadget/UsbGadgetHal;
    .locals 5

    const-string/jumbo v0, "UsbDeviceManager"

    sget v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const/4 v1, 0x3

    const-string/jumbo v2, "UsbPortManager"

    const-string/jumbo v3, "Querying USB Gadget HAL version"

    invoke-static {v1, v2, v3}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->USB_GADGET_AIDL_SERVICE:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v3, "connectToProxy: usb gadget Aidl hal service not found."

    invoke-static {v0, v3, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x4

    if-eqz v1, :cond_0

    const-string/jumbo v0, "USB Gadget HAL AIDL present"

    invoke-static {v3, v2, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;

    invoke-direct {v0, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService(Z)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string v4, "IUSBGadget hal service present but failed to get service"

    invoke-static {v0, v4, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const-string/jumbo v0, "USB Gadget HAL HIDL present"

    invoke-static {v3, v2, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    invoke-direct {v0, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    return-object v0

    :catch_2
    move-exception p0

    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const-string/jumbo v1, "connectToProxy: usb gadget hidl hal service not found."

    invoke-static {v0, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x6

    const-string/jumbo v0, "USB Gadget HAL AIDL/HIDL not present"

    invoke-static {p0, v2, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
