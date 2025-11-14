.class public final Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;
.super Landroid/os/IThermalEventListener$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final notifyThrottling(Landroid/os/Temperature;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result p0

    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Temperature;->getValue()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    const/16 v2, 0xbd

    invoke-static {v2, p0, v0, v1, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;II)V

    return-void
.end method
