.class public final Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;


# instance fields
.field public final synthetic val$immediateFuture:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;->val$immediateFuture:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final onBluetoothActivityEnergyInfoAvailable(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;->val$immediateFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onBluetoothActivityEnergyInfoError(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;->val$immediateFuture:Ljava/util/concurrent/CompletableFuture;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "error: "

    invoke-static {p1, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method
