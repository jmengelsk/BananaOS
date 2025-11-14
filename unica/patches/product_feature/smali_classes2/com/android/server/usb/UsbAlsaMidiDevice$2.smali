.class public final Lcom/android/server/usb/UsbAlsaMidiDevice$2;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

.field public final synthetic val$outputReceivers:[Landroid/media/midi/MidiReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbAlsaMidiDevice;[Landroid/media/midi/MidiReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    iput-object p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    const-string/jumbo p1, "UsbAlsaMidiDevice input thread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/16 v0, 0x200

    new-array v2, v0, [B

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    iget-object v7, v0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    iget-boolean v0, v0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mIsOpen:Z

    if-nez v0, :cond_0

    monitor-exit v7

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    iget-object v3, v1, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    array-length v4, v3

    if-ge v8, v4, :cond_4

    aget-object v4, v3, v8

    iget-short v9, v4, Landroid/system/StructPollfd;->revents:S

    sget v10, Landroid/system/OsConstants;->POLLERR:I

    sget v11, Landroid/system/OsConstants;->POLLHUP:I

    or-int/2addr v10, v11

    and-int/2addr v10, v9

    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    sget v10, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_3

    iput-short v0, v4, Landroid/system/StructPollfd;->revents:S

    iget-object v1, v1, Lcom/android/server/usb/UsbAlsaMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    array-length v4, v1

    const/4 v9, 0x1

    sub-int/2addr v4, v9

    if-ne v8, v4, :cond_2

    goto :goto_2

    :cond_2
    aget-object v1, v1, v8

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    aget-object v1, v1, v8

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    iget-object v1, v1, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

    if-eqz v1, :cond_3

    if-le v4, v9, :cond_3

    invoke-virtual {v1}, Lcom/android/server/usb/PowerBoostSetter;->boostPower()V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, -0x1

    :try_start_2
    invoke-static {v3, v0}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :goto_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string/jumbo p0, "UsbAlsaMidiDevice"

    const-string/jumbo v0, "reader thread exiting"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    const-string/jumbo p0, "UsbAlsaMidiDevice"

    const-string/jumbo v0, "reader thread exiting"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const-string/jumbo p0, "UsbAlsaMidiDevice"

    const-string/jumbo v0, "input thread exit"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
