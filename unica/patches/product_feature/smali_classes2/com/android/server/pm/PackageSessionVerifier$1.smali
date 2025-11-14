.class public final Lcom/android/server/pm/PackageSessionVerifier$1;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageSessionVerifier;

.field public final synthetic val$callback:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

.field public final synthetic val$session:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageSessionVerifier;Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->this$0:Lcom/android/server/pm/PackageSessionVerifier;

    iput-object p2, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    iput-object p3, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$callback:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    iget-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    iget-object p4, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean p4, p4, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    const/4 v0, 0x1

    if-eqz p4, :cond_32

    if-ne p2, v0, :cond_32

    iget-object p2, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->this$0:Lcom/android/server/pm/PackageSessionVerifier;

    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$callback:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "Starting preRebootVerification for session "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p1, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget p4, p4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string/jumbo v0, "PackageSessionVerifier"

    invoke-static {p3, p4, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p3, p2, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    new-instance p4, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p4, p2, p1, p0, v0}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Ljava/lang/Object;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;I)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_32
    if-eq p2, v0, :cond_43

    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p4, p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$callback:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;->onResult(ILjava/lang/String;)V

    return-void

    :cond_43
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->setSessionReady()V

    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier$1;->val$callback:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;->onResult(ILjava/lang/String;)V

    return-void
.end method

.method public final onUserActionRequired(Landroid/content/Intent;)V
    .registers 2

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
