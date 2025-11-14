.class public final Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .registers 8

    const-wide/16 v0, 0x15ec

    cmp-long v0, p1, v0

    if-nez v0, :cond_52

    const-string/jumbo v0, "ThermalManagerService$ThermalHalWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Thermal HAL service died cookie: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    iget-object p1, p1, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_20
    iget-object p2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {p2}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->connectToHal()Z

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    iget-object p2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_4c

    const/4 v0, 0x0

    :try_start_2b
    invoke-virtual {p0, v0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(IZ)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_35
    if-ge v0, v2, :cond_49

    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Temperature;

    check-cast v3, Lcom/android/server/power/ThermalManagerService$1;

    invoke-virtual {v3, v4}, Lcom/android/server/power/ThermalManagerService$1;->onTemperatureChanged(Landroid/os/Temperature;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :catchall_47
    move-exception p0

    goto :goto_4e

    :cond_49
    monitor-exit p2
    :try_end_4a
    .catchall {:try_start_2b .. :try_end_4a} :catchall_47

    :try_start_4a
    monitor-exit p1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4c

    return-void

    :catchall_4c
    move-exception p0

    goto :goto_50

    :goto_4e
    :try_start_4e
    monitor-exit p2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_47

    :try_start_4f
    throw p0

    :goto_50
    monitor-exit p1
    :try_end_51
    .catchall {:try_start_4f .. :try_end_51} :catchall_4c

    throw p0

    :cond_52
    return-void
.end method
