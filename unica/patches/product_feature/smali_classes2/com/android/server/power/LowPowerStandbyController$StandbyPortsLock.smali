.class public final Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mPorts:Ljava/util/List;

.field public final mToken:Landroid/os/IBinder;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/IBinder;ILjava/util/List;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    iput-object p2, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mToken:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mUid:I

    iput-object p4, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mPorts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$StandbyPortsLock;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/server/power/LowPowerStandbyController;->releaseStandbyPorts(Landroid/os/IBinder;)V

    return-void
.end method
