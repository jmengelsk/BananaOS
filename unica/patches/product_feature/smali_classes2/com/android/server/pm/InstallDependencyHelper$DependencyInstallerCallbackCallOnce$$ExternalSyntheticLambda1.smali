.class public final synthetic Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;

    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    const-string v0, "Failed to resolve all dependencies automatically"

    invoke-static {p0, v0}, Lcom/android/server/pm/InstallDependencyHelper;->onError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V

    return-void
.end method
