.class public final Lcom/android/server/usb/UsbDirectMidiDevice$3;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

.field public final synthetic val$cableCountFinal:I

.field public final synthetic val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

.field public final synthetic val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

.field public final synthetic val$multiSchedulerFinal:Lcom/android/internal/midi/MidiEventMultiScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;ILcom/android/internal/midi/MidiEventMultiScheduler;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbDeviceConnection;)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iput p3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$cableCountFinal:I

    iput-object p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$multiSchedulerFinal:Lcom/android/internal/midi/MidiEventMultiScheduler;

    iput-object p5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    iput-object p6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    const-string/jumbo v1, "output thread: "

    const-string/jumbo v2, "UsbDirectMidiDevice"

    :try_start_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Lcom/android/server/usb/UsbMidiPacketConverter;

    invoke-direct {v3}, Lcom/android/server/usb/UsbMidiPacketConverter;-><init>()V

    iget v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$cableCountFinal:I

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbMidiPacketConverter;->createEncoders(I)V

    const/4 v4, 0x0

    move v5, v4

    :cond_17
    if-nez v5, :cond_11b

    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$multiSchedulerFinal:Lcom/android/internal/midi/MidiEventMultiScheduler;

    invoke-virtual {v6}, Lcom/android/internal/midi/MidiEventMultiScheduler;->waitNextEvent()Z

    move-result v6

    if-nez v6, :cond_31

    const-string/jumbo p0, "output thread closed"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11b

    :catch_29
    move-exception v0

    move-object p0, v0

    goto/16 :goto_114

    :catch_2d
    move-exception v0

    move-object p0, v0

    goto/16 :goto_118

    :cond_31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    move v8, v4

    :goto_36
    iget v9, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$cableCountFinal:I

    if-ge v8, v9, :cond_79

    iget-object v9, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$multiSchedulerFinal:Lcom/android/internal/midi/MidiEventMultiScheduler;

    invoke-virtual {v9, v8}, Lcom/android/internal/midi/MidiEventMultiScheduler;->getEventScheduler(I)Lcom/android/internal/midi/MidiEventScheduler;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Lcom/android/internal/midi/MidiEventScheduler;->getNextEvent(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v10

    check-cast v10, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    :goto_46
    if-eqz v10, :cond_76

    const-string/jumbo v11, "Output before conversion "

    iget-object v12, v10, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    iget v13, v10, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    invoke-static {v13, v11, v12}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$smlogByteArray(ILjava/lang/String;[B)V

    iget-object v11, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iget-boolean v12, v11, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    if-eqz v12, :cond_65

    iget-object v12, v10, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    iget v13, v10, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    invoke-static {v11, v12, v13}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$mswapEndiannessPerWord(Lcom/android/server/usb/UsbDirectMidiDevice;[BI)[B

    move-result-object v11

    array-length v12, v11

    invoke-virtual {v0, v11, v4, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_6c

    :cond_65
    iget-object v11, v10, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    iget v12, v10, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    invoke-virtual {v3, v12, v8, v11}, Lcom/android/server/usb/UsbMidiPacketConverter;->encodeMidiPackets(II[B)V

    :goto_6c
    invoke-virtual {v9, v10}, Lcom/android/internal/midi/MidiEventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    invoke-virtual {v9, v6, v7}, Lcom/android/internal/midi/MidiEventScheduler;->getNextEvent(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v10

    check-cast v10, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    goto :goto_46

    :cond_76
    add-int/lit8 v8, v8, 0x1

    goto :goto_36

    :cond_79
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_8a

    const-string/jumbo p0, "output thread interrupted"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11b

    :cond_8a
    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iget-boolean v6, v6, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    if-eqz v6, :cond_99

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    :goto_97
    move-object v10, v6

    goto :goto_a5

    :cond_99
    iget-object v6, v3, Lcom/android/server/usb/UsbMidiPacketConverter;->mEncoderOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/usb/UsbMidiPacketConverter;->mEncoderOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_97

    :goto_a5
    const-string/jumbo v6, "Output after conversion "

    array-length v7, v10

    invoke-static {v7, v6, v10}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$smlogByteArray(ILjava/lang/String;[B)V

    move v11, v4

    :goto_ad
    array-length v6, v10

    if-ge v11, v6, :cond_17

    if-nez v5, :cond_17

    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v6

    array-length v7, v10

    sub-int/2addr v7, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v6, -0x1

    move v7, v4

    :goto_c0
    if-gez v6, :cond_10c

    const/16 v6, 0x14

    if-gt v7, v6, :cond_10c

    iget-object v8, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v9, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    const/16 v13, 0x32

    invoke-virtual/range {v8 .. v13}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-eqz v9, :cond_e3

    const-string/jumbo v5, "output thread interrupted after send"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    goto :goto_10c

    :cond_e3
    if-gez v8, :cond_10a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "retrying packet. retryCount = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " result = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v7, v6, :cond_10a

    const-string/jumbo v6, "Skipping packet because timeout"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10a
    move v6, v8

    goto :goto_c0

    :cond_10c
    :goto_10c
    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v6
    :try_end_112
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_112} :catch_2d
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_112} :catch_29

    add-int/2addr v11, v6

    goto :goto_ad

    :goto_114
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11b

    :goto_118
    invoke-static {v2, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11b
    :goto_11b
    const-string/jumbo p0, "output thread exit"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
