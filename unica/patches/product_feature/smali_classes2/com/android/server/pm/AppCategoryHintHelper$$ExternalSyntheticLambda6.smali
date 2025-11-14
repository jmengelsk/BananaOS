.class public final synthetic Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppCategoryHintHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppCategoryHintHelper;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/pm/AppCategoryHintHelper;

    iput-object p2, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda6;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/pm/AppCategoryHintHelper;

    iget-object v3, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda6;->f$2:Landroid/os/Bundle;

    iget-object v1, v0, Lcom/android/server/pm/AppCategoryHintHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string/jumbo v2, "com.samsung.android.intent.action.SET_APPCATEGORY"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    return-void
.end method
