.class public final Lcom/android/server/usb/UsbDirectMidiDevice;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final mCallback:Lcom/android/server/usb/UsbDirectMidiDevice$1;

.field public mContext:Landroid/content/Context;

.field public mDefaultMidiProtocol:I

.field public mInputUsbEndpointCableCounts:Ljava/util/ArrayList;

.field public mInputUsbEndpoints:Ljava/util/ArrayList;

.field public mIsOpen:Z

.field public final mIsUniversalMidiDevice:Z

.field public final mLock:Ljava/lang/Object;

.field public final mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

.field public mMidiEventMultiSchedulers:Ljava/util/ArrayList;

.field public final mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

.field public mName:Ljava/lang/String;

.field public final mNumInputs:I

.field public final mNumOutputs:I

.field public mOutputUsbEndpointCableCounts:Ljava/util/ArrayList;

.field public mOutputUsbEndpoints:Ljava/util/ArrayList;

.field public final mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

.field public final mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

.field public mServer:Landroid/media/midi/MidiDeviceServer;

.field public mServerAvailable:Z

.field public final mShouldCallSetInterface:Z

.field public mThreads:Ljava/util/ArrayList;

.field public final mUniqueUsbDeviceIdentifier:Ljava/lang/String;

.field public final mUsbDevice:Landroid/hardware/usb/UsbDevice;

.field public mUsbDeviceConnections:Ljava/util/ArrayList;

.field public final mUsbInterfaces:Ljava/util/ArrayList;


# direct methods
.method public static -$$Nest$mopenLocked(Lcom/android/server/usb/UsbDirectMidiDevice;)V
    .registers 17

    move-object/from16 v1, p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "UsbDirectMidiDevice"

    const-string/jumbo v2, "openLocked()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpointCableCounts:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpointCableCounts:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_4a
    iget-object v3, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_10b

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    const/4 v10, 0x0

    :goto_74
    iget-byte v11, v9, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mNumEndpoints:B

    if-ge v10, v11, :cond_ca

    invoke-virtual {v9, v10}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-result-object v11

    if-eqz v11, :cond_c7

    invoke-virtual {v11}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v12

    if-nez v12, :cond_ac

    new-instance v12, Landroid/hardware/usb/UsbEndpoint;

    iget v13, v11, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    iget v14, v11, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:I

    iget v15, v11, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    iget v8, v11, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:I

    invoke-direct {v12, v13, v14, v15, v8}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Lcom/android/server/usb/UsbDirectMidiDevice;->getNumJacks(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/internal/midi/MidiEventMultiScheduler;

    invoke-static {v11}, Lcom/android/server/usb/UsbDirectMidiDevice;->getNumJacks(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)I

    move-result v11

    invoke-direct {v8, v11}, Lcom/android/internal/midi/MidiEventMultiScheduler;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c7

    :cond_ac
    new-instance v8, Landroid/hardware/usb/UsbEndpoint;

    iget v12, v11, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:I

    iget v13, v11, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:I

    iget v14, v11, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    iget v15, v11, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:I

    invoke-direct {v8, v12, v13, v14, v15}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Lcom/android/server/usb/UsbDirectMidiDevice;->getNumJacks(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c7
    :goto_c7
    add-int/lit8 v10, v10, 0x1

    goto :goto_74

    :cond_ca
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_d6

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_107

    :cond_d6
    iget-object v8, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v8}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v8

    iget-object v10, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-virtual {v9, v10}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    move-result-object v9

    invoke-virtual {v1, v9, v8}, Lcom/android/server/usb/UsbDirectMidiDevice;->updateUsbInterface(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbDeviceConnection;)Z

    move-result v9

    if-nez v9, :cond_e9

    goto :goto_107

    :cond_e9
    iget-object v9, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpointCableCounts:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpointCableCounts:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_107
    :goto_107
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4a

    :cond_10b
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_10d
    iget-object v3, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_160

    const/4 v3, 0x0

    :goto_116
    iget-object v4, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_15d

    iget-object v4, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpointCableCounts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/midi/MidiEventMultiScheduler;

    const/4 v6, 0x0

    :goto_145
    if-ge v6, v4, :cond_15a

    invoke-virtual {v5, v6}, Lcom/android/internal/midi/MidiEventMultiScheduler;->getEventScheduler(I)Lcom/android/internal/midi/MidiEventScheduler;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    aget-object v8, v8, v2

    invoke-virtual {v7}, Lcom/android/internal/midi/MidiEventScheduler;->getReceiver()Landroid/media/midi/MidiReceiver;

    move-result-object v7

    iput-object v7, v8, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_145

    :cond_15a
    add-int/lit8 v3, v3, 0x1

    goto :goto_116

    :cond_15d
    add-int/lit8 v0, v0, 0x1

    goto :goto_10d

    :cond_160
    iget-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    move-result-object v6

    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_168
    iget-object v2, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_1c6

    move v7, v0

    const/4 v9, 0x0

    :goto_172
    iget-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_1c2

    iget-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/hardware/usb/UsbEndpoint;

    iget-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpointCableCounts:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;

    const-string/jumbo v2, "UsbDirectMidiDevice input thread "

    invoke-static {v7, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbDirectMidiDevice$2;-><init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;ILandroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[Landroid/media/midi/MidiReceiver;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v2, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_172

    :cond_1c2
    add-int/lit8 v8, v8, 0x1

    move v0, v7

    goto :goto_168

    :cond_1c6
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_1c8
    iget-object v2, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_235

    move v8, v0

    const/4 v9, 0x0

    :goto_1d2
    iget-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_231

    iget-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/hardware/usb/UsbEndpoint;

    iget-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpointCableCounts:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/midi/MidiEventMultiScheduler;

    new-instance v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;

    const-string/jumbo v2, "UsbDirectMidiDevice output write thread "

    invoke-static {v8, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbDirectMidiDevice$3;-><init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;ILcom/android/internal/midi/MidiEventMultiScheduler;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbDeviceConnection;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v2, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v8, v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_1d2

    :cond_231
    add-int/lit8 v7, v7, 0x1

    move v0, v8

    goto :goto_1c8

    :cond_235
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    return-void
.end method

.method public static -$$Nest$mswapEndiannessPerWord(Lcom/android/server/usb/UsbDirectMidiDevice;[BI)[B
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p0, p2, 0x3

    if-eqz p0, :cond_10

    const-string/jumbo v0, "size not multiple of 4: "

    const-string/jumbo v1, "UsbDirectMidiDevice"

    invoke-static {p2, v0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_10
    sub-int p0, p2, p0

    new-array p0, p0, [B

    const/4 v0, 0x0

    :goto_15
    add-int/lit8 v1, v0, 0x3

    if-ge v1, p2, :cond_30

    aget-byte v2, p1, v1

    aput-byte v2, p0, v0

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x2

    aget-byte v4, p1, v3

    aput-byte v4, p0, v2

    aget-byte v2, p1, v2

    aput-byte v2, p0, v3

    aget-byte v2, p1, v0

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x4

    goto :goto_15

    :cond_30
    return-object p0
.end method

.method public static -$$Nest$smlogByteArray(ILjava/lang/String;[B)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_6
    if-ge p1, p0, :cond_28

    aget-byte v1, p2, p1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0x%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_25

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_28
    const-string/jumbo p0, "UsbDirectMidiDevice"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    iput-object v3, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    const/4 v3, 0x1

    iput v3, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mLock:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

    new-instance v4, Lcom/android/server/usb/UsbDirectMidiDevice$1;

    invoke-direct {v4, v0}, Lcom/android/server/usb/UsbDirectMidiDevice$1;-><init>(Lcom/android/server/usb/UsbDirectMidiDevice;)V

    iput-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mCallback:Lcom/android/server/usb/UsbDirectMidiDevice$1;

    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    iput-object v1, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUniqueUsbDeviceIdentifier:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    invoke-virtual {v1, v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :cond_42
    :goto_42
    if-ge v8, v5, :cond_79

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/server/usb/descriptors/UsbDescriptor;

    instance-of v10, v9, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v10, :cond_5e

    check-cast v9, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    iget v10, v9, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_42

    iget-object v9, v9, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mMidiHeaderInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    if-eqz v9, :cond_42

    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    :cond_5e
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Undefined Audio Class Interface l: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v9, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " t:0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v9, v9, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    const-string/jumbo v11, "UsbDescriptorParser"

    invoke-static {v9, v10, v11}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_42

    :cond_79
    if-le v7, v3, :cond_7d

    move v4, v3

    goto :goto_7e

    :cond_7d
    move v4, v6

    :goto_7e
    iput-boolean v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mShouldCallSetInterface:Z

    if-eqz v2, :cond_89

    const/16 v4, 0x200

    invoke-virtual {v1, v4}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findMidiInterfaceDescriptors(I)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_8f

    :cond_89
    const/16 v4, 0x100

    invoke-virtual {v1, v4}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findMidiInterfaceDescriptors(I)Ljava/util/ArrayList;

    move-result-object v1

    :goto_8f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v4

    const-string/jumbo v5, "UsbDirectMidiDevice"

    if-lez v4, :cond_18e

    iget-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4, v6}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v4

    move v7, v6

    :goto_a8
    invoke-virtual {v4}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v8

    if-ge v7, v8, :cond_16d

    invoke-virtual {v4, v7}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v6

    :goto_b7
    if-ge v10, v9, :cond_167

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    iget-object v12, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-virtual {v11, v12}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    move-result-object v12

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v13

    invoke-virtual {v12}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v14

    if-ne v13, v14, :cond_163

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result v13

    invoke-virtual {v12}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result v14

    if-ne v13, v14, :cond_163

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v13

    invoke-virtual {v12}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v14

    if-ne v13, v14, :cond_163

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v13

    invoke-virtual {v12}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v14

    if-ne v13, v14, :cond_163

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v13

    invoke-virtual {v12}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v14

    if-ne v13, v14, :cond_163

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v13

    invoke-virtual {v12}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v14

    if-eq v13, v14, :cond_104

    goto :goto_163

    :cond_104
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_111

    invoke-virtual {v12}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_120

    goto :goto_163

    :cond_111
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_120

    goto :goto_163

    :cond_120
    move v13, v6

    :goto_121
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v14

    if-ge v13, v14, :cond_15d

    invoke-virtual {v8, v13}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v14

    invoke-virtual {v12, v13}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v15

    invoke-virtual {v14}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v6

    invoke-virtual {v15}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v3

    if-ne v6, v3, :cond_163

    invoke-virtual {v14}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v3

    invoke-virtual {v15}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v6

    if-ne v3, v6, :cond_163

    invoke-virtual {v14}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v3

    invoke-virtual {v15}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v6

    if-ne v3, v6, :cond_163

    invoke-virtual {v14}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v3

    invoke-virtual {v15}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v6

    if-eq v3, v6, :cond_158

    goto :goto_163

    :cond_158
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    goto :goto_121

    :cond_15d
    iget-object v3, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_167

    :cond_163
    :goto_163
    const/4 v3, 0x1

    const/4 v6, 0x0

    goto/16 :goto_b7

    :cond_167
    :goto_167
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    goto/16 :goto_a8

    :cond_16d
    iget-object v1, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_18e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Skipping some USB configurations. Count: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18e
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_191
    iget-object v6, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1c5

    iget-object v6, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    const/4 v7, 0x0

    :goto_1a2
    iget-byte v8, v6, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mNumEndpoints:B

    if-ge v7, v8, :cond_1c2

    invoke-virtual {v6, v7}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-result-object v8

    if-eqz v8, :cond_1bf

    invoke-virtual {v8}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v9

    if-nez v9, :cond_1b9

    invoke-static {v8}, Lcom/android/server/usb/UsbDirectMidiDevice;->getNumJacks(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)I

    move-result v8

    add-int/2addr v8, v4

    move v4, v8

    goto :goto_1bf

    :cond_1b9
    invoke-static {v8}, Lcom/android/server/usb/UsbDirectMidiDevice;->getNumJacks(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)I

    move-result v8

    add-int/2addr v8, v3

    move v3, v8

    :cond_1bf
    :goto_1bf
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a2

    :cond_1c2
    add-int/lit8 v1, v1, 0x1

    goto :goto_191

    :cond_1c5
    iput v3, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumInputs:I

    iput v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumOutputs:I

    const-string v1, "Created UsbDirectMidiDevice with "

    const-string v6, " inputs and "

    const-string v7, " outputs. isUniversalMidiDevice: "

    invoke-static {v3, v4, v1, v6, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    new-array v1, v4, [Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    iput-object v1, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    const/4 v6, 0x0

    :goto_1db
    if-ge v6, v4, :cond_1e9

    iget-object v1, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    new-instance v2, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    invoke-direct {v2}, Landroid/media/midi/MidiReceiver;-><init>()V

    aput-object v2, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1db

    :cond_1e9
    new-instance v1, Lcom/android/server/usb/PowerBoostSetter;

    invoke-direct {v1}, Lcom/android/server/usb/PowerBoostSetter;-><init>()V

    iput-object v1, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)Lcom/android/server/usb/UsbDirectMidiDevice;
    .registers 26

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/server/usb/UsbDirectMidiDevice;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/usb/UsbDirectMidiDevice;-><init>(Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mContext:Landroid/content/Context;

    const-class v2, Landroid/media/midi/MidiManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/media/midi/MidiManager;

    const-string/jumbo v11, "UsbDirectMidiDevice"

    if-nez v2, :cond_27

    const-string/jumbo v0, "No MidiManager in UsbDirectMidiDevice.register()"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_233

    :cond_27
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_19a

    iget-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    const/4 v5, 0x0

    :goto_37
    iget-object v6, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_191

    iget-object v6, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_4a
    iget-byte v10, v6, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mNumEndpoints:B

    if-ge v7, v10, :cond_64

    if-eqz v8, :cond_52

    if-nez v9, :cond_64

    :cond_52
    invoke-virtual {v6, v7}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-result-object v10

    if-eqz v10, :cond_61

    invoke-virtual {v10}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v10

    if-nez v10, :cond_60

    move v9, v3

    goto :goto_61

    :cond_60
    move v8, v3

    :cond_61
    :goto_61
    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    :cond_64
    if-eqz v8, :cond_7a

    if-eqz v9, :cond_7a

    iget-object v7, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v7}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v12

    iget-object v7, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-virtual {v6, v7}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    move-result-object v7

    invoke-virtual {v1, v7, v12}, Lcom/android/server/usb/UsbDirectMidiDevice;->updateUsbInterface(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbDeviceConnection;)Z

    move-result v7

    if-nez v7, :cond_7d

    :cond_7a
    const/4 v6, 0x0

    goto/16 :goto_18d

    :cond_7d
    iget-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    iget v5, v6, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mInterfaceNumber:I

    iget-byte v6, v6, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mAlternateSetting:B

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v7, "UsbMidiBlockParser"

    const-string/jumbo v8, "first transfer failed: "

    const-string/jumbo v9, "second transfer failed: "

    const-string/jumbo v10, "MIDI protocol: "

    const-string/jumbo v13, "Parsed a non-positive block terminal size: "

    const-string v14, "Incorrect descriptor subtype: "

    const-string v15, "Incorrect descriptor type: "

    const/4 v4, 0x5

    new-array v4, v4, [B

    add-int/lit16 v6, v6, 0x2600

    const/16 v18, 0x5

    const/16 v19, 0x7d0

    move-object/from16 v16, v13

    const/16 v13, 0x81

    move-object/from16 v17, v14

    const/4 v14, 0x6

    move-object/from16 v20, v17

    move-object/from16 v17, v4

    move-object/from16 v4, v16

    move/from16 v16, v5

    move-object/from16 v5, v20

    move-object/from16 v20, v15

    move v15, v6

    move-object/from16 v6, v20

    :try_start_b8
    invoke-virtual/range {v12 .. v19}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v13

    if-lez v13, :cond_171

    aget-byte v8, v17, v3

    const/16 v13, 0x26

    if-eq v8, v13, :cond_db

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v4, v17, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d5
    move v0, v3

    goto/16 :goto_189

    :catch_d8
    move-exception v0

    goto/16 :goto_182

    :cond_db
    const/4 v6, 0x2

    aget-byte v8, v17, v6

    if-eq v8, v3, :cond_f2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v4, v17, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    :cond_f2
    const/4 v5, 0x3

    aget-byte v5, v17, v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x4

    aget-byte v6, v17, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    if-gtz v5, :cond_111

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    :cond_111
    new-array v4, v5, [B

    const/16 v19, 0x7d0

    const/16 v13, 0x81

    const/4 v14, 0x6

    move-object/from16 v17, v4

    move/from16 v18, v5

    invoke-virtual/range {v12 .. v19}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v4

    move-object/from16 v5, v17

    if-lez v4, :cond_160

    new-instance v4, Lcom/android/server/usb/descriptors/ByteStream;

    invoke-direct {v4, v5}, Lcom/android/server/usb/descriptors/ByteStream;-><init>([B)V

    invoke-virtual {v0, v4}, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)V

    iget-object v4, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_13a

    const-string v0, "Group Terminal Blocks failed parsing: 1"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    :cond_13a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;

    iget v5, v5, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMidiProtocol:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;

    iget v0, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMidiProtocol:I

    goto :goto_189

    :cond_160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d5

    :cond_171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_180} :catch_d8

    goto/16 :goto_d5

    :goto_182
    const-string v4, "Can not communicate with USB device"

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d5

    :goto_189
    invoke-virtual {v12}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    goto :goto_197

    :goto_18d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_37

    :cond_191
    const-string v0, "Cannot find interface with both input and output endpoints"

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :goto_197
    iput v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    goto :goto_19d

    :cond_19a
    const/4 v0, -0x1

    iput v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    :goto_19d
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iget-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_1cf

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1bd

    goto :goto_1cf

    :cond_1bd
    if-eqz v4, :cond_1cd

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1c6

    goto :goto_1cd

    :cond_1c6
    const-string v6, " "

    invoke-static {v0, v6, v4}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1d0

    :cond_1cd
    :goto_1cd
    move-object v6, v0

    goto :goto_1d0

    :cond_1cf
    :goto_1cf
    move-object v6, v4

    :goto_1d0
    const-string v8, "#"

    invoke-static {v6, v8}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUniqueUsbDeviceIdentifier:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v8, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    if-eqz v8, :cond_1ea

    const-string v8, " MIDI 2.0"

    invoke-static {v6, v8}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1f0

    :cond_1ea
    const-string v8, " MIDI 1.0"

    invoke-static {v6, v8}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1f0
    iput-object v6, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mName:Ljava/lang/String;

    const-string/jumbo v8, "name"

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "manufacturer"

    invoke-virtual {v7, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "product"

    invoke-virtual {v7, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "version"

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "serial_number"

    invoke-virtual {v7, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "usb_device"

    iget-object v4, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v7, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iput-boolean v3, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mServerAvailable:Z

    iget-object v3, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    iget v4, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumInputs:I

    iget v9, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    iget-object v10, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mCallback:Lcom/android/server/usb/UsbDirectMidiDevice$1;

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/media/midi/MidiManager;->createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;IILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-nez v0, :cond_23e

    :goto_233
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const-string/jumbo v0, "createDeviceServer failed"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_23e
    return-object v1
.end method

.method public static getNumJacks(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)I
    .registers 2

    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mClassSpecificEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbACEndpoint;

    if-eqz p0, :cond_d

    instance-of v0, p0, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;

    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->mNumJacks:B

    return p0

    :cond_d
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final close()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->closeLocked()V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_19

    :cond_d
    :goto_d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServerAvailable:Z

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_b

    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-eqz p0, :cond_18

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_18
    return-void

    :goto_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_b

    throw p0
.end method

.method public final closeLocked()V
    .registers 9

    const-string/jumbo v0, "closeLocked()"

    const-string/jumbo v1, "UsbDirectMidiDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_11
    :goto_11
    if-ge v4, v2, :cond_21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/Thread;

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_11

    :cond_21
    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :cond_28
    :goto_28
    if-ge v4, v2, :cond_40

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/Thread;

    if-eqz v5, :cond_28

    const-wide/16 v6, 0xc8

    :try_start_36
    invoke-virtual {v5, v6, v7}, Ljava/lang/Thread;->join(J)V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_28

    :catch_3a
    const-string/jumbo v0, "thread join interrupted"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    move v1, v3

    :goto_44
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    array-length v4, v2

    if-ge v1, v4, :cond_50

    aget-object v2, v2, v1

    iput-object v0, v2, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_50
    move v1, v3

    :goto_51
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7f

    move v2, v3

    :goto_5a
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7c

    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/midi/MidiEventMultiScheduler;

    invoke-virtual {v4}, Lcom/android/internal/midi/MidiEventMultiScheduler;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_7f
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_88
    if-ge v4, v2, :cond_96

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    goto :goto_88

    :cond_96
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpointCableCounts:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpointCableCounts:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    return-void
.end method

.method public final dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "midi_devices"

    const-wide v3, 0x20b00000005L

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v5

    iget v2, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumInputs:I

    const-string/jumbo v7, "num_inputs"

    const-wide v8, 0x10500000001L

    invoke-virtual {v1, v7, v8, v9, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget v2, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumOutputs:I

    const-string/jumbo v7, "num_outputs"

    const-wide v10, 0x10500000002L

    invoke-virtual {v1, v7, v10, v11, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget-boolean v2, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    const-string/jumbo v7, "is_universal"

    const-wide v12, 0x10800000003L

    invoke-virtual {v1, v7, v12, v13, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    iget-object v2, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mName:Ljava/lang/String;

    const-string/jumbo v7, "name"

    const-wide v12, 0x10900000004L

    invoke-virtual {v1, v7, v12, v13, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    if-eqz v2, :cond_13f

    iget-object v0, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "block_parser"

    const-wide v12, 0x10b00000005L

    invoke-virtual {v1, v2, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v12

    iget v2, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderLength:I

    const-string/jumbo v7, "length"

    invoke-virtual {v1, v7, v8, v9, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget v2, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderDescriptorType:I

    const-string/jumbo v14, "descriptor_type"

    invoke-virtual {v1, v14, v10, v11, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget v2, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderDescriptorSubtype:I

    const-string/jumbo v15, "descriptor_subtype"

    const-wide v10, 0x10500000003L

    invoke-virtual {v1, v15, v10, v11, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget v2, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mTotalLength:I

    const-string/jumbo v10, "total_length"

    const-wide v8, 0x10500000004L

    invoke-virtual {v1, v10, v8, v9, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget-object v0, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_8a
    if-ge v10, v2, :cond_137

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v8, "block"

    invoke-virtual {v1, v8, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v8

    iget v3, v11, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mLength:I

    move-wide/from16 v16, v5

    const-wide v4, 0x10500000001L

    invoke-virtual {v1, v7, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget v3, v11, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mDescriptorType:I

    const-wide v4, 0x10500000002L

    invoke-virtual {v1, v14, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget v3, v11, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mDescriptorSubtype:I

    const-wide v4, 0x10500000003L

    invoke-virtual {v1, v15, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget v3, v11, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupBlockId:I

    const-string/jumbo v6, "group_block_id"

    const-wide v4, 0x10500000004L

    invoke-virtual {v1, v6, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget v3, v11, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupTerminalBlockType:I

    const-string/jumbo v6, "group_terminal_block_type"

    const-wide v4, 0x10500000005L

    invoke-virtual {v1, v6, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget v3, v11, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mGroupTerminal:I

    const-string/jumbo v4, "group_terminal"

    const-wide v5, 0x10500000006L

    invoke-virtual {v1, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget v3, v11, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mNumGroupTerminals:I

    const-string/jumbo v4, "num_group_terminals"

    const-wide v5, 0x10500000007L

    invoke-virtual {v1, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget v3, v11, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mBlockItem:I

    const-string/jumbo v4, "block_item"

    const-wide v5, 0x10500000008L

    invoke-virtual {v1, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget v3, v11, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMidiProtocol:I

    const-string/jumbo v4, "midi_protocol"

    const-wide v5, 0x10500000009L

    invoke-virtual {v1, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget v3, v11, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMaxInputBandwidth:I

    const-string/jumbo v4, "max_input_bandwidth"

    const-wide v5, 0x1050000000aL

    invoke-virtual {v1, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget v3, v11, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMaxOutputBandwidth:I

    const-string/jumbo v4, "max_output_bandwidth"

    const-wide v5, 0x1050000000bL

    invoke-virtual {v1, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    move-wide/from16 v5, v16

    const-wide v3, 0x20b00000005L

    const-wide v8, 0x10500000004L

    goto/16 :goto_8a

    :cond_137
    move-wide/from16 v16, v5

    invoke-virtual {v1, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    move-wide/from16 v2, v16

    goto :goto_140

    :cond_13f
    move-wide v2, v5

    :goto_140
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public final updateUsbInterface(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbDeviceConnection;)Z
    .registers 7

    const/4 v0, 0x0

    const-string/jumbo v1, "UsbDirectMidiDevice"

    if-nez p2, :cond_d

    const-string/jumbo p0, "UsbDeviceConnection is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_d
    const/4 v2, 0x1

    invoke-virtual {p2, p1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string p0, "Can\'t claim interface"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1a
    iget-boolean p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mShouldCallSetInterface:Z

    if-eqz p0, :cond_2a

    invoke-virtual {p2, p1}, Landroid/hardware/usb/UsbDeviceConnection;->setInterface(Landroid/hardware/usb/UsbInterface;)Z

    move-result p0

    if-nez p0, :cond_29

    const-string p0, "Can\'t set interface"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return v2

    :cond_2a
    const-string/jumbo p0, "no alternate interface"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
