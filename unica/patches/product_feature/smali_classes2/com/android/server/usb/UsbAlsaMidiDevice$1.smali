.class public final Lcom/android/server/usb/UsbAlsaMidiDevice$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/media/midi/MidiDeviceServer$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbAlsaMidiDevice;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    return-void
.end method


# virtual methods
.method public final onClose()V
    .registers 1

    return-void
.end method

.method public final onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 8

    invoke-virtual {p2}, Landroid/media/midi/MidiDeviceStatus;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_f
    if-ge v2, v0, :cond_1c

    invoke-virtual {p2, v2}, Landroid/media/midi/MidiDeviceStatus;->isInputPortOpen(I)Z

    move-result v4

    if-eqz v4, :cond_19

    add-int/lit8 v3, v3, 0x1

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1c
    :goto_1c
    if-ge v1, p1, :cond_2d

    invoke-virtual {p2, v1}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    move-result v0

    if-lez v0, :cond_2a

    invoke-virtual {p2, v1}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    move-result v0

    add-int/2addr v0, v3

    move v3, v0

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2d
    iget-object p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    iget-object p1, p1, Lcom/android/server/usb/UsbAlsaMidiDevice;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_32
    const-string/jumbo p2, "UsbAlsaMidiDevice"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numOpenPorts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    iget-boolean v1, v1, Lcom/android/server/usb/UsbAlsaMidiDevice;->mIsOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mServerAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    iget-boolean v1, v1, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServerAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_74

    iget-object p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    iget-boolean v0, p2, Lcom/android/server/usb/UsbAlsaMidiDevice;->mIsOpen:Z

    if-nez v0, :cond_74

    iget-boolean v0, p2, Lcom/android/server/usb/UsbAlsaMidiDevice;->mServerAvailable:Z

    if-eqz v0, :cond_74

    invoke-virtual {p2}, Lcom/android/server/usb/UsbAlsaMidiDevice;->openLocked()Z

    goto :goto_7f

    :catchall_72
    move-exception p0

    goto :goto_81

    :cond_74
    if-nez v3, :cond_7f

    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    iget-boolean p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice;->mIsOpen:Z

    if-eqz p2, :cond_7f

    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaMidiDevice;->closeLocked()V

    :cond_7f
    :goto_7f
    monitor-exit p1

    return-void

    :goto_81
    monitor-exit p1
    :try_end_82
    .catchall {:try_start_32 .. :try_end_82} :catchall_72

    throw p0
.end method
