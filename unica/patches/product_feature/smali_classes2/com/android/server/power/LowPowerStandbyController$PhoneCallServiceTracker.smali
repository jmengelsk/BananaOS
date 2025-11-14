.class public final Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;
.super Landroid/app/IForegroundServiceObserver$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mRegistered:Z

.field public final mUidsWithPhoneCallService:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-direct {p0}, Landroid/app/IForegroundServiceObserver$Stub;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mRegistered:Z

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mUidsWithPhoneCallService:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    iget-object p1, p1, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    iget-object p2, p2, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    const/4 p3, 0x4

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p1, p4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    iget-object p2, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {p0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->uptimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
