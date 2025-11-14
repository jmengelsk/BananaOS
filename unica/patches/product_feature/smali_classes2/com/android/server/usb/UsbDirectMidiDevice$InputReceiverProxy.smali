.class public final Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;
.super Landroid/media/midi/MidiReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mReceiver:Landroid/media/midi/MidiReceiver;


# virtual methods
.method public final onFlush()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/midi/MidiReceiver;->flush()V

    :cond_0
    return-void
.end method

.method public final onSend([BIIJ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    :cond_0
    return-void
.end method
