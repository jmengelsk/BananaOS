.class public final Lcom/android/server/usb/UsbAlsaMidiDevice;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final BUFFER_SIZE:I = 0x200

.field public static final TAG:Ljava/lang/String; = "UsbAlsaMidiDevice"


# instance fields
.field public final mAlsaCard:I

.field public final mAlsaDevice:I

.field public final mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field public mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

.field public mFileDescriptors:[Ljava/io/FileDescriptor;

.field public mInputStreams:[Ljava/io/FileInputStream;

.field public mIsOpen:Z

.field public final mLock:Ljava/lang/Object;

.field public final mMidiInputPortReceivers:[Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

.field public final mNumInputs:I

.field public final mNumOutputs:I

.field public mOutputStreams:[Ljava/io/FileOutputStream;

.field public mPipeFD:I

.field public mPollFDs:[Landroid/system/StructPollfd;

.field public mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

.field public mServer:Landroid/media/midi/MidiDeviceServer;

.field public mServerAvailable:Z


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPipeFD:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

    new-instance v0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbAlsaMidiDevice$1;-><init>(Lcom/android/server/usb/UsbAlsaMidiDevice;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    iput p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mAlsaCard:I

    iput p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mAlsaDevice:I

    iput p3, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mNumInputs:I

    iput p4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mNumOutputs:I

    new-array p1, p4, [Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p4, :cond_0

    iget-object p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    new-instance p3, Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    invoke-direct {p3}, Landroid/media/midi/MidiReceiver;-><init>()V

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/server/usb/PowerBoostSetter;

    invoke-direct {p1}, Lcom/android/server/usb/PowerBoostSetter;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Bundle;IIII)Lcom/android/server/usb/UsbAlsaMidiDevice;
    .locals 1

    new-instance v0, Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/UsbAlsaMidiDevice;-><init>(IIII)V

    invoke-virtual {v0, p0, p1}, Lcom/android/server/usb/UsbAlsaMidiDevice;->register(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const-string/jumbo p0, "UsbAlsaMidiDevice"

    const-string/jumbo p1, "createDeviceServer failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private native nativeClose([Ljava/io/FileDescriptor;)V
.end method

.method private native nativeOpen(IIII)[Ljava/io/FileDescriptor;
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mIsOpen:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaMidiDevice;->closeLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServerAvailable:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-eqz p0, :cond_1

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final closeLocked()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    aget-object v3, v3, v1

    iput-object v4, v3, Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/midi/MidiEventScheduler;->close()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbAlsaMidiDevice;->nativeClose([Ljava/io/FileDescriptor;)V

    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mIsOpen:Z

    return-void
.end method

.method public final dump(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 2

    invoke-virtual {p2, p3, p4, p5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p3

    const-string/jumbo p5, "device_address"

    const-wide v0, 0x10900000003L

    invoke-virtual {p2, p5, v0, v1, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-wide v0, 0x10500000001L

    iget p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mAlsaCard:I

    const-string/jumbo p5, "card"

    invoke-virtual {p2, p5, v0, v1, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v0, 0x10500000002L

    iget p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mAlsaDevice:I

    const-string/jumbo p1, "device"

    invoke-virtual {p2, p1, v0, v1, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    invoke-virtual {p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public final openLocked()Z
    .locals 8

    iget v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mNumInputs:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mNumOutputs:I

    iget v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mAlsaCard:I

    iget v3, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mAlsaDevice:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/usb/UsbAlsaMidiDevice;->nativeOpen(IIII)[Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string/jumbo p0, "UsbAlsaMidiDevice"

    const-string/jumbo v0, "nativeOpen failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iput-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    new-array v4, v0, [Landroid/system/StructPollfd;

    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    new-array v4, v0, [Ljava/io/FileInputStream;

    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v5, v2, v4

    new-instance v6, Landroid/system/StructPollfd;

    invoke-direct {v6}, Landroid/system/StructPollfd;-><init>()V

    iput-object v5, v6, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    sget v7, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v7, v7

    iput-short v7, v6, Landroid/system/StructPollfd;->events:S

    iget-object v7, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    aput-object v6, v7, v4

    iget-object v6, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-array v4, v1, [Ljava/io/FileOutputStream;

    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    new-array v4, v1, [Lcom/android/internal/midi/MidiEventScheduler;

    iput-object v4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_3

    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    add-int v7, v0, v4

    aget-object v7, v2, v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v6, v5, v4

    new-instance v5, Lcom/android/internal/midi/MidiEventScheduler;

    invoke-direct {v5}, Lcom/android/internal/midi/MidiEventScheduler;-><init>()V

    iget-object v6, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aput-object v5, v6, v4

    iget-object v6, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    aget-object v6, v6, v4

    invoke-virtual {v5}, Lcom/android/internal/midi/MidiEventScheduler;->getReceiver()Landroid/media/midi/MidiReceiver;

    move-result-object v5

    iput-object v5, v6, Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v2}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    move-result-object v2

    if-lez v0, :cond_4

    new-instance v0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;

    invoke-direct {v0, p0, v2}, Lcom/android/server/usb/UsbAlsaMidiDevice$2;-><init>(Lcom/android/server/usb/UsbAlsaMidiDevice;[Landroid/media/midi/MidiReceiver;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_4
    :goto_2
    if-ge v3, v1, :cond_5

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v0, v0, v3

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    aget-object v2, v2, v3

    new-instance v4, Lcom/android/server/usb/UsbAlsaMidiDevice$3;

    const-string/jumbo v5, "UsbAlsaMidiDevice output thread "

    invoke-static {v3, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0, v2, v3}, Lcom/android/server/usb/UsbAlsaMidiDevice$3;-><init>(Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mIsOpen:Z

    return v0
.end method

.method public final register(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 10

    const-class v0, Landroid/media/midi/MidiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/media/midi/MidiManager;

    const/4 p1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "UsbAlsaMidiDevice"

    const-string/jumbo p2, "No MidiManager in UsbAlsaMidiDevice.register()"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_0
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServerAvailable:Z

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbAlsaMidiDevice$InputReceiverProxy;

    iget v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mNumInputs:I

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Landroid/media/midi/MidiManager;->createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;IILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-nez p2, :cond_1

    return p1

    :cond_1
    return v9
.end method
