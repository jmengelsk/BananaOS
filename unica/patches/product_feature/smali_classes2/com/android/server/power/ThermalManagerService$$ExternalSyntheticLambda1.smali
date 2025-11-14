.class public final synthetic Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/os/IThermalHeadroomListener;

    :try_start_0
    iget v1, v0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroom:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroom:F

    iget v2, v0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mForecastHeadroom:F

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;->mHeadroomThresholds:[F

    const/16 v3, 0xa

    invoke-interface {p0, v1, v2, v3, v0}, Landroid/os/IThermalHeadroomListener;->onHeadroomChange(FFI[F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "ThermalManagerService"

    const-string/jumbo v1, "Thermal headroom callback failed to call"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/os/IThermalEventListener;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/os/Temperature;

    :try_start_1
    invoke-interface {v0, p0}, Landroid/os/IThermalEventListener;->notifyThrottling(Landroid/os/Temperature;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string/jumbo v0, "ThermalManagerService"

    const-string/jumbo v1, "Thermal event callback failed to call"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/power/ThermalManagerService;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/os/IThermalStatusListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    iget v0, v0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    invoke-interface {p0, v0}, Landroid/os/IThermalStatusListener;->onStatusChange(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    const-string/jumbo v0, "ThermalManagerService"

    const-string/jumbo v1, "Thermal status callback failed to call"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
