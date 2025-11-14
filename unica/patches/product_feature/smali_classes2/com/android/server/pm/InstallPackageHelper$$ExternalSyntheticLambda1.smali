.class public final synthetic Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallPackageHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/IntentSender;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/lang/String;ILandroid/content/IntentSender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$3:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$2:I

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda1;->f$3:Landroid/content/IntentSender;

    iget-object v3, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/pm/PackageManagerService;->restorePermissionsAndUpdateRolesForNewUserInstall(ILjava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    iget-object v0, v0, Lcom/android/server/pm/InstallPackageHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p0}, Lcom/android/server/pm/InstallPackageHelper;->onInstallComplete(ILandroid/content/Context;Landroid/content/IntentSender;)V

    :cond_0
    return-void
.end method
