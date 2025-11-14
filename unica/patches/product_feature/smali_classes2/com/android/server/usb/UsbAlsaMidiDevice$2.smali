.class public final Lcom/android/server/usb/UsbAlsaMidiDevice$2;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

.field public final synthetic val$outputReceivers:[Landroid/media/midi/MidiReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbAlsaMidiDevice;[Landroid/media/midi/MidiReceiver;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    iput-object p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    const-string/jumbo p1, "UsbAlsaMidiDevice input thread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    const/16 v0, 0x200

    new-array v2, v0, [B

    :goto_4
    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    iget-object v7, v0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_6b
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_d} :catch_61

    :try_start_d
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    iget-boolean v0, v0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mIsOpen:Z

    if-nez v0, :cond_18

    monitor-exit v7

    goto :goto_74

    :catchall_15
    move-exception v0

    move-object p0, v0

    goto :goto_5f

    :cond_18
    const/4 v0, 0x0

    move v8, v0

    :goto_1a
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    iget-object v3, v1, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    array-length v4, v3

    if-ge v8, v4, :cond_59

    aget-object v4, v3, v8

    iget-short v9, v4, Landroid/system/StructPollfd;->revents:S

    sget v10, Landroid/system/OsConstants;->POLLERR:I

    sget v11, Landroid/system/OsConstants;->POLLHUP:I

    or-int/2addr v10, v11

    and-int/2addr v10, v9

    if-eqz v10, :cond_2e

    goto :goto_59

    :cond_2e
    sget v10, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_56

    iput-short v0, v4, Landroid/system/StructPollfd;->revents:S

    iget-object v1, v1, Lcom/android/server/usb/UsbAlsaMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    array-length v4, v1

    const/4 v9, 0x1

    sub-int/2addr v4, v9

    if-ne v8, v4, :cond_3d

    goto :goto_59

    :cond_3d
    aget-object v1, v1, v8

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    aget-object v1, v1, v8

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    iget-object v1, v1, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

    if-eqz v1, :cond_56

    if-le v4, v9, :cond_56

    invoke-virtual {v1}, Lcom/android/server/usb/PowerBoostSetter;->boostPower()V

    :cond_56
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    :cond_59
    :goto_59
    monitor-exit v7
    :try_end_5a
    .catchall {:try_start_d .. :try_end_5a} :catchall_15

    const/4 v0, -0x1

    :try_start_5b
    invoke-static {v3, v0}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_6b
    .catch Landroid/system/ErrnoException; {:try_start_5b .. :try_end_5e} :catch_61

    goto :goto_4

    :goto_5f
    :try_start_5f
    monitor-exit v7
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_15

    :try_start_60
    throw p0
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_61} :catch_6b
    .catch Landroid/system/ErrnoException; {:try_start_60 .. :try_end_61} :catch_61

    :catch_61
    const-string/jumbo p0, "UsbAlsaMidiDevice"

    const-string/jumbo v0, "reader thread exiting"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    :catch_6b
    const-string/jumbo p0, "UsbAlsaMidiDevice"

    const-string/jumbo v0, "reader thread exiting"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_74
    const-string/jumbo p0, "UsbAlsaMidiDevice"

    const-string/jumbo v0, "input thread exit"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
