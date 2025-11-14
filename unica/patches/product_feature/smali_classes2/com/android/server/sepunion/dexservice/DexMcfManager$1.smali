.class public final Lcom/android/server/sepunion/dexservice/DexMcfManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/dexservice/DexMcfManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$1;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onReceive intent.getAction():"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DexMcfManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p2, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$1;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    iget-object p2, p2, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfHandler:Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;

    const/16 v1, 0x2bd

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$1;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    iget-object p2, p2, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfHandler:Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "onReceive: BLE state changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$1;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    iget-object v1, v1, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfHandler:Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;

    const/16 v2, 0x2be

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$1;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    iget-object v1, v1, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfHandler:Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "com.samsung.android.nearbyscanning"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$1;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    iget-object p2, p2, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfHandler:Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;

    const/16 v1, 0x2bf

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$1;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    iget-object p2, p2, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfHandler:Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    const-string/jumbo p2, "com.sec.android.desktopmode.manager.connectivity.action.BLE_ADDRESS_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$1;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    iget-object p1, p1, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo p2, "ble_tv_mac_address_list"

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "bleMacAddressList bleMacAddress="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mWirelessDeXBleAddressSettingChangedListener onSettingChanged value="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$1;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    iget-object p2, p2, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfHandler:Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;

    const/16 v0, 0x66

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$1;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    iget-object p0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfHandler:Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method
