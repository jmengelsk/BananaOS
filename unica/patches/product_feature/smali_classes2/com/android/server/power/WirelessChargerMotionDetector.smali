.class public final Lcom/android/server/power/WirelessChargerMotionDetector;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public final mCallbacks:Lcom/android/server/power/PowerManagerService$1;

.field public mIsDeviceMoving:Z

.field public mIsWirelessChargerSContextRegistered:Z

.field public final mLock:Ljava/lang/Object;

.field public mPassedWakeupTime:J

.field public final mWirelessChargerSContextListener:Lcom/android/server/power/WirelessChargerMotionDetector$1;

.field public final mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/BatteryManagerInternal;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/power/WirelessChargerMotionDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/WirelessChargerMotionDetector$1;-><init>(Lcom/android/server/power/WirelessChargerMotionDetector;)V

    iput-object v0, p0, Lcom/android/server/power/WirelessChargerMotionDetector;->mWirelessChargerSContextListener:Lcom/android/server/power/WirelessChargerMotionDetector$1;

    const-string/jumbo v0, "scontext"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/scontext/SContextManager;

    iput-object p2, p0, Lcom/android/server/power/WirelessChargerMotionDetector;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    iput-object p1, p0, Lcom/android/server/power/WirelessChargerMotionDetector;->mLock:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/power/WirelessChargerMotionDetector;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iput-object p4, p0, Lcom/android/server/power/WirelessChargerMotionDetector;->mCallbacks:Lcom/android/server/power/PowerManagerService$1;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/server/power/WirelessChargerMotionDetector;->mPassedWakeupTime:J

    return-void
.end method
