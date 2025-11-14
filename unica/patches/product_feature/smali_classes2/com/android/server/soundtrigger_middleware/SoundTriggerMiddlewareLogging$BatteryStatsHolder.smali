.class public abstract Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$BatteryStatsHolder;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final INSTANCE:Landroid/os/BatteryStatsInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/os/BatteryStatsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsInternal;

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$BatteryStatsHolder;->INSTANCE:Landroid/os/BatteryStatsInternal;

    return-void
.end method
