.class public final Lcom/android/server/midi/MidiService$3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/media/midi/MidiManager$OnDeviceOpenedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/midi/MidiService;

.field public final synthetic val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/midi/MidiService$3;->this$0:Lcom/android/server/midi/MidiService;

    iput-object p2, p0, Lcom/android/server/midi/MidiService$3;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final onDeviceOpened(Landroid/media/midi/MidiDevice;)V
    .registers 6

    const-string/jumbo v0, "onDeviceOpened() device:"

    iget-object v1, p0, Lcom/android/server/midi/MidiService$3;->this$0:Lcom/android/server/midi/MidiService;

    iget-object v1, v1, Lcom/android/server/midi/MidiService;->mBleMidiDeviceMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_8
    const-string/jumbo v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/midi/MidiService$3;->this$0:Lcom/android/server/midi/MidiService;

    iget-object v0, v0, Lcom/android/server/midi/MidiService;->mBleMidiDeviceMap:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/midi/MidiService$3;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    throw p0
.end method
