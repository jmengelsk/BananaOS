.class public final Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1;->this$0:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1;->this$0:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;

    iget-object v0, v0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1;Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->runOnHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1;->this$0:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;

    iget-object v0, v0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1;Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->runOnHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1;->this$0:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;

    iget-object p1, p1, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1;Ljava/lang/Object;I)V

    invoke-static {p1, v0}, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->runOnHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "DexBleAdvertiserServiceManager"

    const-string v0, "BleAdvertiserService onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager$1;->this$0:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mService:Lcom/android/server/sepunion/dexservice/IDexBleAdvertiserService;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mBound:Z

    return-void
.end method
