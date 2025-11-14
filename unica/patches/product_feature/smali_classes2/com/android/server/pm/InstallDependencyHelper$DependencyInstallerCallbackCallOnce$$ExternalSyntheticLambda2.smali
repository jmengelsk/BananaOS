.class public final synthetic Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;

    iput p2, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;

    iget p0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda2;->f$1:I

    iget-object v0, v0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/InstallDependencyHelper;->notifySessionComplete(I)V

    return-void
.end method
