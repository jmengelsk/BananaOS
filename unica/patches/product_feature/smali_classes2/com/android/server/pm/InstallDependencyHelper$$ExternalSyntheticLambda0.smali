.class public final synthetic Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;

    check-cast p1, Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;

    new-instance v1, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;

    invoke-virtual {p0}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;-><init>(Landroid/os/IBinder;)V

    invoke-interface {p1, v0, v1}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;->onDependenciesRequired(Ljava/util/List;Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;)V

    return-void
.end method
