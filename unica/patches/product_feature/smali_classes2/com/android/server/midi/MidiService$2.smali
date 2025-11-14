.class public final Lcom/android/server/midi/MidiService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const/4 p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    const-string/jumbo p0, "MidiService"

    const-string/jumbo p1, "MidiService, action is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1a0

    goto :goto_4b

    :sswitch_1c
    const-string/jumbo v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_4b

    :cond_26
    const/4 v3, 0x3

    goto :goto_4b

    :sswitch_28
    const-string/jumbo v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_4b

    :cond_32
    move v3, p1

    goto :goto_4b

    :sswitch_34
    const-string/jumbo v4, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    goto :goto_4b

    :cond_3e
    move v3, v0

    goto :goto_4b

    :sswitch_40
    const-string/jumbo v4, "android.bluetooth.device.action.UUID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    goto :goto_4b

    :cond_4a
    move v3, v1

    :goto_4b
    packed-switch v3, :pswitch_data_1b2

    goto/16 :goto_19e

    :pswitch_50  #0x2
    const-string/jumbo p1, "MidiService"

    const-string v0, "ACTION_ACL_DISCONNECTED"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "android.bluetooth.device.extra.DEVICE"

    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$misBLEMIDIDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_19e

    iget-object p0, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "MidiService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "closeBluetoothDevice() device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/midi/MidiService;->mBleMidiDeviceMap:Ljava/util/HashMap;

    monitor-enter p2

    :try_start_88
    iget-object p0, p0, Lcom/android/server/midi/MidiService;->mBleMidiDeviceMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/midi/MidiDevice;

    monitor-exit p2
    :try_end_91
    .catchall {:try_start_88 .. :try_end_91} :catchall_af

    if-eqz p0, :cond_19e

    :try_start_93
    invoke-virtual {p0}, Landroid/media/midi/MidiDevice;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_98

    goto/16 :goto_19e

    :catch_98
    move-exception p0

    const-string/jumbo p1, "MidiService"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception closing BLE-MIDI device"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19e

    :catchall_af
    move-exception p0

    :try_start_b0
    monitor-exit p2
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    throw p0

    :pswitch_b2  #0x1
    const-string/jumbo v2, "MidiService"

    const-string v3, "ACTION_ACL_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Intent: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MidiService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_10d

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "  "

    const-string v7, " : "

    invoke-static {v6, v5, v7}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_ff

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_102

    :cond_ff
    const-string/jumbo v5, "NULL"

    :goto_102
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    :cond_10d
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_167

    const-string/jumbo v3, "android.bluetooth.device.extra.TRANSPORT"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, p1, :cond_167

    const-string/jumbo p1, "MidiService"

    const-string v2, "BLE Device"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "android.bluetooth.device.extra.DEVICE"

    const-class v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mdumpUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    if-eqz v2, :cond_158

    array-length v3, v2

    :goto_140
    if-ge v1, v3, :cond_158

    aget-object v4, v2, v1

    iget-object v5, p2, Lcom/android/server/midi/MidiService;->mNonMidiUUIDs:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_156

    const-string/jumbo p0, "MidiService"

    const-string/jumbo p1, "Non-MIDI service UUIDs found. NOT MIDI"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_156
    add-int/2addr v1, v0

    goto :goto_140

    :cond_158
    const-string/jumbo p2, "MidiService"

    const-string/jumbo v0, "Potential MIDI Device."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p0, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mopenBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :cond_167
    const-string/jumbo p0, "MidiService"

    const-string/jumbo p1, "No BLE transport - NOT MIDI"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_171  #0x0, 0x3
    const-string/jumbo p1, "MidiService"

    const-string v0, "ACTION_UUID"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "android.bluetooth.device.extra.DEVICE"

    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mdumpUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$misBLEMIDIDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_19e

    const-string/jumbo p2, "MidiService"

    const-string v0, "BT MIDI DEVICE"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p0, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mopenBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    :cond_19e
    :goto_19e
    return-void

    nop

    :sswitch_data_1a0
    .sparse-switch
        -0x16809cc6 -> :sswitch_40
        -0x11f77b4b -> :sswitch_34
        0x6c9330ef -> :sswitch_28
        0x7e2cc189 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_171  #00000000
        :pswitch_b2  #00000001
        :pswitch_50  #00000002
        :pswitch_171  #00000003
    .end packed-switch
.end method
