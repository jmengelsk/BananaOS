.class public final synthetic Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/BroadcastHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;

.field public final synthetic f$5:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;Landroid/os/Bundle;ILcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;Landroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/pm/BroadcastHelper;

    iput-object p2, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$2:Landroid/os/Bundle;

    iput p4, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$3:I

    iput-object p5, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$4:Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;

    iput-object p6, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$5:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/pm/BroadcastHelper;

    iget-object v1, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$2:Landroid/os/Bundle;

    iget v2, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$3:I

    iget-object v10, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$4:Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;

    iget-object v11, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;->f$5:Landroid/os/Bundle;

    filled-new-array {v2}, [I

    move-result-object v7

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/high16 v4, 0x50000000

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    return-void
.end method
