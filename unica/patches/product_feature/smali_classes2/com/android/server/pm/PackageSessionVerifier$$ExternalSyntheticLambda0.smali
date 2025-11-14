.class public final synthetic Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/PackageSessionVerifier;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageSessionVerifier;Ljava/lang/Object;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;I)V
    .registers 5

    iput p4, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageSessionVerifier;

    iput-object p2, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget v0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_114

    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageSessionVerifier;

    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_10
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSessionVerifier;->storeSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-eqz v2, :cond_3b

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSessionVerifier;->checkApexUpdateAllowed(Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSessionVerifier;->checkRebootlessApex(Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSessionVerifier;->checkApexSignature(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_23

    :catch_39
    move-exception v0

    goto :goto_48

    :cond_3b
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->checkApexUpdateAllowed(Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->checkRebootlessApex(Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->checkApexSignature(Lcom/android/server/pm/PackageInstallerSession;)V

    :cond_44
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageSessionVerifier;->verifyAPK(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;)V
    :try_end_47
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_10 .. :try_end_47} :catch_39

    goto :goto_60

    :goto_48
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;->onResult(ILjava/lang/String;)V

    :goto_60
    return-void

    :pswitch_61  #0x2
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageSessionVerifier;

    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_6c
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->verifyApex(Lcom/android/server/pm/StagingManager$StagedSession;)V

    iget-object v2, v0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, p0, v4}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Ljava/lang/Object;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6c .. :try_end_7a} :catch_7b

    goto :goto_85

    :catch_7b
    move-exception v2

    iget v3, v2, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v3, v2}, Lcom/android/server/pm/PackageSessionVerifier;->onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;ILjava/lang/String;)V

    :goto_85
    return-void

    :pswitch_86  #0x1
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageSessionVerifier;

    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_91
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSessionVerifier;->checkActiveSessions(Z)V
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_9c} :catch_d3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_91 .. :try_end_9c} :catch_c2

    :try_start_9c
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->checkRollbacks(Lcom/android/server/pm/StagingManager$StagedSession;)V

    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    iget-object v3, v2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v3, v3, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-eqz v3, :cond_c4

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->getChildSessions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/StagingManager$StagedSession;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/pm/PackageSessionVerifier;->checkOverlaps(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/StagingManager$StagedSession;)V

    goto :goto_b2

    :catch_c2
    move-exception v2

    goto :goto_ea

    :cond_c4
    invoke-virtual {v0, v2, v2}, Lcom/android/server/pm/PackageSessionVerifier;->checkOverlaps(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/StagingManager$StagedSession;)V

    :cond_c7
    iget-object v3, v0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v2, p0, v5}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Ljava/lang/Object;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f3

    :catch_d3
    move-exception v2

    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t query fs-checkpoint status : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, -0x6e

    invoke-direct {v3, v4, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_ea
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_9c .. :try_end_ea} :catch_c2

    :goto_ea
    iget v3, v2, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v3, v2}, Lcom/android/server/pm/PackageSessionVerifier;->onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;ILjava/lang/String;)V

    :goto_f3
    return-void

    :pswitch_f4  #0x0
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageSessionVerifier;

    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_ff
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->endVerification(Lcom/android/server/pm/StagingManager$StagedSession;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;->onResult(ILjava/lang/String;)V
    :try_end_107
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_ff .. :try_end_107} :catch_108

    goto :goto_112

    :catch_108
    move-exception v2

    iget v3, v2, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v3, v2}, Lcom/android/server/pm/PackageSessionVerifier;->onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;ILjava/lang/String;)V

    :goto_112
    return-void

    nop

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_f4  #00000000
        :pswitch_86  #00000001
        :pswitch_61  #00000002
    .end packed-switch
.end method
