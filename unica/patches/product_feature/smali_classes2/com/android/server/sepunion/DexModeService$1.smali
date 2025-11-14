.class public final Lcom/android/server/sepunion/DexModeService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/DexModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/DexModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/DexModeService$1;->this$0:Lcom/android/server/sepunion/DexModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-eqz p2, :cond_0

    const-string/jumbo p1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/android/server/sepunion/DexModeService;->$r8$clinit:I

    const-string p1, "DexModeService"

    const-string/jumbo p2, "Pradeep DexController: ble and mcf"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/DexModeService$1;->this$0:Lcom/android/server/sepunion/DexModeService;

    new-instance p2, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;

    iget-object v0, p1, Lcom/android/server/sepunion/DexModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "desktopmodeDW"

    const/4 v2, -0x4

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    move-result-object v4

    invoke-direct {p2, v0, v4}, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;-><init>(Landroid/content/Context;Lcom/android/server/ServiceThread;)V

    iput-object p2, p1, Lcom/android/server/sepunion/DexModeService;->bleAdvertiserServiceManagerForTV:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;

    iget-object p1, p0, Lcom/android/server/sepunion/DexModeService$1;->this$0:Lcom/android/server/sepunion/DexModeService;

    new-instance p2, Lcom/android/server/sepunion/dexservice/DexMcfManager;

    iget-object p1, p1, Lcom/android/server/sepunion/DexModeService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/sepunion/DexModeService$1;->this$0:Lcom/android/server/sepunion/DexModeService;

    iget-object p0, p0, Lcom/android/server/sepunion/DexModeService;->bleAdvertiserServiceManagerForTV:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;

    invoke-direct {p2, p1, v0, p0}, Lcom/android/server/sepunion/dexservice/DexMcfManager;-><init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;)V

    :cond_0
    return-void
.end method
