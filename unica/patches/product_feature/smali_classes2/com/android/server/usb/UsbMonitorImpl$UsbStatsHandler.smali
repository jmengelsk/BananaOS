.class public final Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCurrentUsbStats:Ljava/lang/String;

.field public final mLogFile:Ljava/io/File;

.field public final mSysFs:Ljava/io/File;

.field public final synthetic this$0:Lcom/android/server/usb/UsbMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbMonitorImpl;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->this$0:Lcom/android/server/usb/UsbMonitorImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/io/File;

    const-string p2, "/sys/class/usb_notify/usb_control/usb_hw_param"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    const-string p2, "/efs/usb_hw_param/usb_hw_param.log"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    const-string/jumbo p1, "none"

    iput-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mCurrentUsbStats:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const-string/jumbo v1, "UsbStatsMonitor"

    if-eqz v0, :cond_23

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1f

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unexpected message "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->updateUsbStats()V

    return-void

    :cond_23
    const-string/jumbo p1, "finishBoot"

    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_38

    const-string/jumbo p0, "No sysfs node"

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    :cond_38
    iget-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->this$0:Lcom/android/server/usb/UsbMonitorImpl;

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbMonitorImpl;->-$$Nest$mreadFileAsStringOrNull(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/usb/UsbMonitorImpl;->-$$Nest$mstringToFile(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_6e

    :cond_4e
    iget-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    const-string v2, "0"

    invoke-static {v0, p1, v2}, Lcom/android/server/usb/UsbMonitorImpl;->-$$Nest$mstringToFile(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;Ljava/lang/String;)V

    :try_start_55
    iget-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_69

    iget-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_69

    :catch_67
    move-exception p0

    goto :goto_72

    :cond_69
    :goto_69
    iget-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_6e} :catch_67

    :goto_6e
    invoke-virtual {p0}, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->updateUsbStats()V

    goto :goto_77

    :goto_72
    const-string p1, "Couldn\'t create log file"

    invoke-static {v1, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_77
    return-void
.end method

.method public final updateUsbStats()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->this$0:Lcom/android/server/usb/UsbMonitorImpl;

    invoke-static {v1, v0}, Lcom/android/server/usb/UsbMonitorImpl;->-$$Nest$mreadFileAsStringOrNull(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v2, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mCurrentUsbStats:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    iput-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mCurrentUsbStats:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbMonitorImpl;->-$$Nest$mstringToFile(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;Ljava/lang/String;)V

    :cond_19
    const-string/jumbo v0, "UsbStatsMonitor"

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mCurrentUsbStats:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
