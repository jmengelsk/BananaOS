.class public final Lcom/android/server/sepunion/dexservice/DexMcfManager$4;
.super Lcom/samsung/android/mcf/ble/BleScanCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/dexservice/DexMcfManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$4;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/ble/BleScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScanFailed(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$4;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onScanFailed errorCode "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DexMcfManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$4;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$4;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    iget-wide v0, v0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleAdvertiserServiceTimeout:J

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onScanResult result "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DexMcfManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$4;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    iget-object p1, p1, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfHandler:Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;

    const/16 v0, 0x191

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$4;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    iget-object p0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfHandler:Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
