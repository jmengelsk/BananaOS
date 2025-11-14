.class public final synthetic Lcom/android/server/pm/BackgroundInstallControlCallbackHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    iput-object p2, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void
.end method
