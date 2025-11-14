.class public final synthetic Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/BroadcastHelper;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/BroadcastHelper;Landroid/os/Bundle;ILjava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/BroadcastHelper;

    iput-object p2, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;->f$1:Landroid/os/Bundle;

    iput p3, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;->f$2:I

    iput-object p4, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;->f$3:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/BroadcastHelper;

    iget-object v3, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;->f$1:Landroid/os/Bundle;

    iget v1, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;->f$2:I

    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;->f$3:Ljava/util/function/Supplier;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v1}, [I

    move-result-object v7

    new-instance v10, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v10, p0, v1}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Supplier;I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v1, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    return-void
.end method
