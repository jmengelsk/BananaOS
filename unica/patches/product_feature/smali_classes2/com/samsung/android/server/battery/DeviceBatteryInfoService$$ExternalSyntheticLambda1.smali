.class public final synthetic Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-static {p2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->printBatteryInfo(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    return-void
.end method
