.class public final Lcom/android/server/pm/MovePackageHelper$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/MovePackageHelper;

.field public final synthetic val$sdParams:Lcom/android/server/pm/MovePackageHelper$SdcardParams;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/MovePackageHelper$SdcardParams;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper$2;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iput-object p2, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$sdParams:Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/MovePackageHelper$2;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$sdParams:Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    iget-object v4, v1, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->packageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->volumeUuid:Ljava/lang/String;

    move-object v2, v1

    iget v1, v2, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->moveId:I

    move-object v3, v2

    iget v2, v3, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->callingUid:I

    iget-object v3, v3, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->user:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/MovePackageHelper;->movePackageInternal(IILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v0

    const-string/jumbo v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to move "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$sdParams:Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    iget-object v3, v3, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/pm/MovePackageHelper$2;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object v1, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget-object v2, p0, Lcom/android/server/pm/MovePackageHelper$2;->val$sdParams:Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    iget v2, v2, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->moveId:I

    const/4 v3, -0x6

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    sget-object v1, Lcom/android/server/pm/MovePackageHelper;->sMoveIdMapForSd:Ljava/util/Map;

    monitor-enter v1

    :try_start_3e
    sget-object v2, Lcom/android/server/pm/MovePackageHelper;->sPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_4e

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4e

    :catchall_4b
    move-exception v0

    move-object p0, v0

    goto :goto_74

    :cond_4e
    :goto_4e
    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    if-ne v0, v3, :cond_72

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_56
    if-ge v5, v0, :cond_6d

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    check-cast v3, Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    iget-object v4, p0, Lcom/android/server/pm/MovePackageHelper$2;->this$0:Lcom/android/server/pm/MovePackageHelper;

    iget-object v4, v4, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget v3, v3, Lcom/android/server/pm/MovePackageHelper$SdcardParams;->moveId:I

    const/4 v6, -0x1

    invoke-virtual {v4, v3, v6}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    goto :goto_56

    :cond_6d
    sget-object p0, Lcom/android/server/pm/MovePackageHelper;->sPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_72
    monitor-exit v1

    return-void

    :goto_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_3e .. :try_end_75} :catchall_4b

    throw p0
.end method
