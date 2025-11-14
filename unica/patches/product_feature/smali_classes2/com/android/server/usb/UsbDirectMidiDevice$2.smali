.class public final Lcom/android/server/usb/UsbDirectMidiDevice$2;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

.field public final synthetic val$cableCountFinal:I

.field public final synthetic val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

.field public final synthetic val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

.field public final synthetic val$outputReceivers:[Landroid/media/midi/MidiReceiver;

.field public final synthetic val$portStartFinal:I


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;ILandroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[Landroid/media/midi/MidiReceiver;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iput p3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$cableCountFinal:I

    iput-object p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object p5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    iput-object p6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    iput p7, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$portStartFinal:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    const-string/jumbo v1, "UsbDirectMidiDevice"

    new-instance v2, Landroid/hardware/usb/UsbRequest;

    invoke-direct {v2}, Landroid/hardware/usb/UsbRequest;-><init>()V

    new-instance v0, Lcom/android/server/usb/UsbMidiPacketConverter;

    invoke-direct {v0}, Lcom/android/server/usb/UsbMidiPacketConverter;-><init>()V

    iget v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$cableCountFinal:I

    new-instance v4, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput v3, v4, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->mNumJacks:I

    new-array v5, v3, [Ljava/io/ByteArrayOutputStream;

    iput-object v5, v4, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->mDecodedByteArrays:[Ljava/io/ByteArrayOutputStream;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_0

    iget-object v7, v4, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->mDecodedByteArrays:[Ljava/io/ByteArrayOutputStream;

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iput-object v4, v0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiDecoder:Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;

    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v3

    new-array v3, v3, [B

    const/4 v4, 0x1

    move v6, v4

    :cond_1
    :goto_1
    if-eqz v6, :cond_d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo p0, "input thread interrupted"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_8

    :cond_2
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string p0, "Cannot queue request"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_3
    iget-object v8, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object v8

    if-nez v8, :cond_4

    const-string/jumbo p0, "Response is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_4
    if-eq v2, v8, :cond_5

    const-string/jumbo v7, "Skipping response"

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    if-lez v13, :cond_1

    const-string v7, "Input before conversion "

    invoke-static {v13, v7, v3}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$smlogByteArray(ILjava/lang/String;[B)V

    iget-object v7, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iget-boolean v7, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    if-nez v7, :cond_6

    invoke-virtual {v0, v13, v3}, Lcom/android/server/usb/UsbMidiPacketConverter;->decodeMidiPackets(I[B)V

    :cond_6
    move v14, v5

    :goto_2
    iget v7, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$cableCountFinal:I

    if-ge v14, v7, :cond_1

    iget-object v7, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iget-boolean v8, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    if-eqz v8, :cond_7

    invoke-static {v7, v3, v13}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$mswapEndiannessPerWord(Lcom/android/server/usb/UsbDirectMidiDevice;[BI)[B

    move-result-object v7

    :goto_3
    move-object v8, v7

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v14}, Lcom/android/server/usb/UsbMidiPacketConverter;->pullDecodedMidiPackets(I)[B

    move-result-object v7

    goto :goto_3

    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Input "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " after conversion "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    array-length v9, v8

    invoke-static {v9, v7, v8}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$smlogByteArray(ILjava/lang/String;[B)V

    array-length v7, v8

    if-nez v7, :cond_8

    goto :goto_5

    :cond_8
    iget-object v7, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    if-eqz v7, :cond_c

    iget v9, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$portStartFinal:I

    add-int/2addr v9, v14

    aget-object v7, v7, v9

    if-nez v7, :cond_9

    goto :goto_6

    :cond_9
    array-length v10, v8

    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    iget-object v7, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iget-object v9, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

    if-eqz v9, :cond_b

    array-length v10, v8

    if-le v10, v4, :cond_b

    iget-boolean v7, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    if-eqz v7, :cond_a

    aget-byte v7, v8, v5

    const/4 v8, 0x4

    shr-int/2addr v7, v8

    and-int/lit8 v7, v7, 0xf

    int-to-byte v7, v7

    const/4 v10, 0x2

    if-eq v7, v10, :cond_a

    if-ne v7, v8, :cond_b

    :cond_a
    invoke-virtual {v9}, Lcom/android/server/usb/PowerBoostSetter;->boostPower()V

    :cond_b
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_c
    :goto_6
    const-string/jumbo v6, "outputReceivers is null"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v5

    goto/16 :goto_1

    :cond_d
    :goto_7
    invoke-virtual {v2}, Landroid/hardware/usb/UsbRequest;->close()V

    goto :goto_9

    :goto_8
    :try_start_1
    const-string/jumbo v0, "input thread: "

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_1
    const-string/jumbo p0, "reader thread exiting"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :goto_9
    const-string/jumbo p0, "input thread exit"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_a
    invoke-virtual {v2}, Landroid/hardware/usb/UsbRequest;->close()V

    throw p0
.end method
