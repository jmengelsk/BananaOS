.class public final synthetic Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/thermal/V1_0/IThermal$getTemperaturesCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;ZI)V
    .registers 5

    iput p4, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-boolean p3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->f$0:Z

    iput p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->f$1:I

    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 11

    iget v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_8c

    iget-boolean v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->f$0:Z

    iget v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iget v2, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v2, :cond_38

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, p1, :cond_47

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/hardware/thermal/V1_0/Temperature;

    if-eqz v0, :cond_26

    iget v5, v4, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    if-eq v1, v5, :cond_26

    goto :goto_15

    :cond_26
    new-instance v5, Landroid/os/Temperature;

    iget v6, v4, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    iget v7, v4, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    iget-object v4, v4, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v4, v2}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    move-object v4, p0

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_38
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Couldn\'t get temperatures because of HAL error: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    const-string/jumbo p2, "ThermalManagerService$ThermalHalWrapper"

    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    return-void

    :pswitch_48  #0x0
    iget-boolean v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->f$0:Z

    iget v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iget v2, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v2, :cond_7b

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    move v3, v2

    :goto_58
    if-ge v3, p1, :cond_8a

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/hardware/thermal/V1_0/Temperature;

    if-eqz v0, :cond_69

    iget v5, v4, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    if-eq v1, v5, :cond_69

    goto :goto_58

    :cond_69
    new-instance v5, Landroid/os/Temperature;

    iget v6, v4, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    iget v7, v4, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    iget-object v4, v4, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v4, v2}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    move-object v4, p0

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_7b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Couldn\'t get temperatures because of HAL error: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    const-string/jumbo p2, "ThermalManagerService$ThermalHalWrapper"

    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    return-void

    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_48  #00000000
    .end packed-switch
.end method
