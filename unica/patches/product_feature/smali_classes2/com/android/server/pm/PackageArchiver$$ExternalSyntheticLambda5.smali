.class public final synthetic Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageArchiver;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/UserHandle;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageArchiver;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/pm/PackageArchiver;

    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$2:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/pm/PackageArchiver;

    iget-object v2, v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$2:Landroid/os/UserHandle;

    iget-object v4, v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda5;->f$4:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Starting app unarchival for: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "PackageArchiverService"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.UNARCHIVE_PACKAGE"

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v7, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v6, "android.content.pm.extra.UNARCHIVE_ID"

    invoke-virtual {v7, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.content.pm.extra.UNARCHIVE_PACKAGE_NAME"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string/jumbo v6, "android.content.pm.extra.UNARCHIVE_ALL_USERS"

    invoke-virtual {v7, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-ne v5, v0, :cond_1

    iget-object v0, v1, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getCurrentUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    :cond_1
    move-object v8, v3

    iget-object v6, v1, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const v1, 0x1d4c0

    int-to-long v1, v1

    const-string v5, ""

    const/4 v3, 0x0

    const/16 v4, 0x148

    invoke-virtual/range {v0 .. v5}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v6 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
