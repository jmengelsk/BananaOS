.class public final Lcom/android/server/usb/UsbAlsaMidiDevice$3;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

.field public final synthetic val$outputStreamF:Ljava/io/FileOutputStream;

.field public final synthetic val$portF:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V
    .registers 5

    iput-object p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    iput-object p3, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$outputStreamF:Ljava/io/FileOutputStream;

    iput p4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$portF:I

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    :catch_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v0}, Lcom/android/internal/midi/MidiEventScheduler;->waitNextEvent()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v0

    check-cast v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_0

    const-string/jumbo v1, "UsbAlsaMidiDevice"

    if-nez v0, :cond_14

    const-string/jumbo p0, "output thread exit"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$outputStreamF:Ljava/io/FileOutputStream;

    iget-object v3, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    iget v4, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_33

    :catch_1f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "write failed for port "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$portF:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v1, v0}, Lcom/android/internal/midi/MidiEventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    goto :goto_0
.end method
