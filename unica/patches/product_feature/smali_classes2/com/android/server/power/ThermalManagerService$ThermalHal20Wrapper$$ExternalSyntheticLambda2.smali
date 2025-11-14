.class public final synthetic Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/thermal/V2_0/IThermal$getCurrentTemperaturesCallback;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 11

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    iget v0, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    const-string/jumbo v1, "ThermalManagerService$ThermalHalWrapper"

    if-nez v0, :cond_3a

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v2, v0

    :goto_f
    if-ge v2, p1, :cond_39

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/hardware/thermal/V2_0/Temperature;

    iget v4, v3, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    invoke-static {v4}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v4

    if-nez v4, :cond_28

    const-string v4, "Invalid status data from HAL"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, v3, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    :cond_28
    new-instance v4, Landroid/os/Temperature;

    iget v5, v3, Landroid/hardware/thermal/V2_0/Temperature;->value:F

    iget v6, v3, Landroid/hardware/thermal/V2_0/Temperature;->type:I

    iget-object v7, v3, Landroid/hardware/thermal/V2_0/Temperature;->name:Ljava/lang/String;

    iget v3, v3, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_39
    return-void

    :cond_3a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Couldn\'t get temperatures because of HAL error: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
