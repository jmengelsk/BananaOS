.class public final Lcom/android/server/pm/PackageInstallerSession$9;
.super Landroid/os/incremental/IStorageHealthListener$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic val$systemDataLoader:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$9;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$9;->val$systemDataLoader:Z

    invoke-direct {p0}, Landroid/os/incremental/IStorageHealthListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHealthStatus(II)V
    .registers 5

    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$9;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-boolean p1, p1, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$9;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-boolean p1, p1, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    if-eqz p1, :cond_d

    goto :goto_31

    :cond_d
    const/4 p1, 0x1

    if-eq p2, p1, :cond_17

    const/4 v0, 0x2

    if-eq p2, v0, :cond_17

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1c

    goto :goto_31

    :cond_17
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$9;->val$systemDataLoader:Z

    if-eqz p2, :cond_1c

    goto :goto_31

    :cond_1c
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$9;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-boolean p1, p2, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$9;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    const/4 p2, -0x1

    const/16 v0, -0x14

    const-string v1, "Image is missing pages required for installation."

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_31
    :goto_31
    return-void
.end method
