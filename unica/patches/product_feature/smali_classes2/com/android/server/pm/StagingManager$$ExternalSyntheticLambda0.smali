.class public final synthetic Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    iput p1, p0, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/pm/StagingManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_2e

    check-cast p0, Lcom/android/server/pm/StagingManager$StagedSession;

    check-cast p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->verifySession()V

    return-void

    :pswitch_f  #0x0
    check-cast p0, Lcom/android/server/pm/StagingManager;

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    monitor-enter v0

    :try_start_14
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mFailedPackageNames:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/pm/StagingManager;->mNativeFailureReason:Ljava/lang/String;

    invoke-static {v1, v2, p0}, Lcom/android/server/rollback/ApexdRevertLogger;->logApexdRevert(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_28

    throw p0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_f  #00000000
    .end packed-switch
.end method
