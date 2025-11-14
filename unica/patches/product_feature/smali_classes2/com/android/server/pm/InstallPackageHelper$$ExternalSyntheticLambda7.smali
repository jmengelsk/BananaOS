.class public final synthetic Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallPackageHelper;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/pm/InstallRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallPackageHelper;ZLcom/android/server/pm/InstallRequest;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iput-boolean p2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;->f$1:Z

    iput-object p3, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/pm/InstallRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iget-boolean v1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;->f$1:Z

    iget-object p0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    goto :goto_10

    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    :goto_10
    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_20

    aget v4, v1, v3

    iget-object v5, p0, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/pm/PackageManagerService;->restorePermissionsAndUpdateRolesForNewUserInstall(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_20
    return-void
.end method
