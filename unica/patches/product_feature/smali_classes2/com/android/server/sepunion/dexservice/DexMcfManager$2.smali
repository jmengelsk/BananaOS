.class public final Lcom/android/server/sepunion/dexservice/DexMcfManager$2;
.super Lcom/samsung/android/mcf/ble/BleAdapterCallback;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/dexservice/DexMcfManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$2;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/ble/BleAdapterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMcfServiceStateChanged(II)V
    .locals 1

    const-string/jumbo p2, "onMcfServiceStateChanged state "

    const-string v0, "DexMcfManager"

    invoke-static {p1, p2, v0}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$2;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    iget-object p2, p2, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfHandler:Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;

    const/16 v0, 0xc9

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$2;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    iget-object p0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfHandler:Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
