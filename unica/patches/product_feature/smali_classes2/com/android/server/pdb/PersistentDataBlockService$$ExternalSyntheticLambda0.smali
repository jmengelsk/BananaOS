.class public final synthetic Lcom/android/server/pdb/PersistentDataBlockService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pdb/PersistentDataBlockService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pdb/PersistentDataBlockService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceChecksumValidity()Z

    iget-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->automaticallyDeactivateFrpIfPossible()Z

    iget-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    goto :goto_24

    :cond_12
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_1c
    invoke-virtual {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->formatPartitionLocked(Z)V

    monitor-exit v0

    goto :goto_24

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_21

    throw p0

    :cond_24
    :goto_24
    const-string/jumbo v0, "persistent_data_block"

    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mService:Lcom/android/server/pdb/PersistentDataBlockService$1;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->signalInitDone()V

    return-void
.end method
