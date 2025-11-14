.class public final Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$DisableRecord;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public packageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

.field public token:Landroid/os/IBinder;

.field public what:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$DisableRecord;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 6

    sget-boolean v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->EMERGENCY_MODE_ENABLED:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "binder died for packageName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    const-string v2, "EdgeLightingPolicyManager"

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$DisableRecord;->this$0:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;

    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    iget-object v3, v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v4, 0x0

    :try_start_1b
    invoke-virtual {v0, v4, v2, v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->manageDisableRecoredLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_25

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_25
    move-exception p0

    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p0
.end method
