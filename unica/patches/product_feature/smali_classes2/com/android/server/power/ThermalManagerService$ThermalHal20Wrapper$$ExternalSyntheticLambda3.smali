.class public final synthetic Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    check-cast p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/hardware/thermal/TemperatureThreshold;

    invoke-direct {p0}, Landroid/hardware/thermal/TemperatureThreshold;-><init>()V

    iget-object v0, p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/thermal/TemperatureThreshold;->name:Ljava/lang/String;

    iget v0, p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->type:I

    iput v0, p0, Landroid/hardware/thermal/TemperatureThreshold;->type:I

    iget-object v0, p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->coldThrottlingThresholds:[F

    iput-object v0, p0, Landroid/hardware/thermal/TemperatureThreshold;->coldThrottlingThresholds:[F

    iget-object p1, p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->hotThrottlingThresholds:[F

    iput-object p1, p0, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    return-object p0
.end method
