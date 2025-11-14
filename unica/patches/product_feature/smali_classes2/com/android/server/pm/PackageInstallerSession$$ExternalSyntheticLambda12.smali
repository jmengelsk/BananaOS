.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    iget-object p0, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "Failed to uninstall package with failed dataloader: "

    const-string/jumbo v0, "PackageInstallerSession"

    invoke-static {p0, v6, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
