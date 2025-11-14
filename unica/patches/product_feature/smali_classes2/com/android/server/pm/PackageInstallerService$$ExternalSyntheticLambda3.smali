.class public final synthetic Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerService;

.field public final synthetic f$1:Landroid/content/pm/VersionedPackage;

.field public final synthetic f$2:Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerService;Landroid/content/pm/VersionedPackage;Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/PackageInstallerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda3;->f$1:Landroid/content/pm/VersionedPackage;

    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iput p4, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda3;->f$3:I

    iput p5, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda3;->f$4:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/PackageInstallerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda3;->f$1:Landroid/content/pm/VersionedPackage;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget v4, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda3;->f$3:I

    iget v5, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda3;->f$4:I

    iget-object p0, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Landroid/app/PackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIIZ)V

    return-void
.end method
