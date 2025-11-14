.class public final synthetic Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:[I

.field public final synthetic f$2:Landroid/content/Intent;

.field public final synthetic f$3:Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;

.field public final synthetic f$4:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(I[ILandroid/content/Intent;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$1:[I

    iput-object p3, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$2:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;

    iput-object p5, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$4:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$1:[I

    iget-object v2, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$2:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;

    iget-object p0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$4:Ljava/util/ArrayList;

    check-cast p1, Landroid/os/IRemoteCallback;

    check-cast p2, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;

    iget v4, p2, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->mUserId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    if-eq v4, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p2, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->mUid:I

    if-eqz v1, :cond_1

    const/16 v0, 0x3e8

    invoke-static {p2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p2, v0}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    if-nez p2, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v2, v0

    :cond_3
    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
