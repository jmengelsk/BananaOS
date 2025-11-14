.class Lcom/android/server/pm/InstallDependencyHelper$1;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/InstallDependencyHelper;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstallDependencyHelper;Landroid/content/Context;Landroid/content/Intent;ILcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda1;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$1;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    iput-object p6, p0, Lcom/android/server/pm/InstallDependencyHelper$1;->val$handler:Landroid/os/Handler;

    move-object p1, p2

    move-object p2, p3

    const/4 p3, 0x1

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    return-void
.end method


# virtual methods
.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    sget-wide v0, Lcom/android/server/pm/InstallDependencyHelper;->UNBIND_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method public final getJobHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper$1;->val$handler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getRequestTimeoutMs()J
    .locals 2

    sget-wide v0, Lcom/android/server/pm/InstallDependencyHelper;->REQUEST_TIMEOUT_MILLIS:J

    return-wide v0
.end method
