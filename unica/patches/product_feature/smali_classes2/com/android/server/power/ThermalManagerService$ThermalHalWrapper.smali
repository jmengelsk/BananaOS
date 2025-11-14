.class public abstract Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

.field public final mHalLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract connectToHal()Z
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract forecastSkinTemperature(I)F
.end method

.method public abstract getCurrentCoolingDevices(IZ)Ljava/util/List;
.end method

.method public abstract getCurrentTemperatures(IZ)Ljava/util/List;
.end method

.method public abstract getTemperatureThresholds(IZ)Ljava/util/List;
.end method

.method public setCallback(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    return-void
.end method
