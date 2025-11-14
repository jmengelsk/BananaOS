.class public final Lcom/android/server/usb/UsbDirectMidiDevice$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/media/midi/MidiDeviceServer$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbDirectMidiDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDirectMidiDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    return-void
.end method


# virtual methods
.method public final onClose()V
    .locals 0

    return-void
.end method

.method public final onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 5

    invoke-virtual {p2}, Landroid/media/midi/MidiDeviceStatus;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p2, v2}, Landroid/media/midi/MidiDeviceStatus;->isInputPortOpen(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, p1, :cond_3

    invoke-virtual {p2, v1}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p2, v1}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iget-object p1, p1, Lcom/android/server/usb/UsbDirectMidiDevice;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string/jumbo p2, "UsbDirectMidiDevice"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numOpenPorts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iget-boolean v1, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mServerAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iget-boolean v1, v1, Lcom/android/server/usb/UsbDirectMidiDevice;->mServerAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_4

    iget-object p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iget-boolean v0, p2, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    if-nez v0, :cond_4

    iget-boolean v0, p2, Lcom/android/server/usb/UsbDirectMidiDevice;->mServerAvailable:Z

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$mopenLocked(Lcom/android/server/usb/UsbDirectMidiDevice;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    if-nez v3, :cond_5

    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iget-boolean p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->closeLocked()V

    :cond_5
    :goto_2
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
