.class public final synthetic Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/thermal/V1_0/IThermal$getCoolingDevicesCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;ZI)V
    .locals 0

    iput p4, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-boolean p3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;->f$0:Z

    iput p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;->f$1:I

    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .locals 8

    iget v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;->f$0:Z

    iget v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iget v2, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/hardware/thermal/V1_0/CoolingDevice;

    if-eqz v0, :cond_0

    iget v4, v3, Landroid/hardware/thermal/V1_0/CoolingDevice;->type:I

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/os/CoolingDevice;

    iget v5, v3, Landroid/hardware/thermal/V1_0/CoolingDevice;->currentValue:F

    float-to-long v5, v5

    iget v7, v3, Landroid/hardware/thermal/V1_0/CoolingDevice;->type:I

    iget-object v3, v3, Landroid/hardware/thermal/V1_0/CoolingDevice;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    move-object v3, p0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Couldn\'t get cooling device because of HAL error: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    const-string/jumbo p2, "ThermalManagerService$ThermalHalWrapper"

    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;->f$0:Z

    iget v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iget v2, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_5

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/hardware/thermal/V1_0/CoolingDevice;

    if-eqz v0, :cond_3

    iget v4, v3, Landroid/hardware/thermal/V1_0/CoolingDevice;->type:I

    if-eq v1, v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Landroid/os/CoolingDevice;

    iget v5, v3, Landroid/hardware/thermal/V1_0/CoolingDevice;->currentValue:F

    float-to-long v5, v5

    iget v7, v3, Landroid/hardware/thermal/V1_0/CoolingDevice;->type:I

    iget-object v3, v3, Landroid/hardware/thermal/V1_0/CoolingDevice;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    move-object v3, p0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Couldn\'t get cooling device because of HAL error: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    const-string/jumbo p2, "ThermalManagerService$ThermalHalWrapper"

    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
