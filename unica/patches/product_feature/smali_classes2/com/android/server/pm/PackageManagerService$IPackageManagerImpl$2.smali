.class public final Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

.field public final synthetic val$realMoveId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;->val$realMoveId:I

    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreated(ILandroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onStatusChanged(IIJ)V
    .registers 5

    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;->this$1:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    iget p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;->val$realMoveId:I

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(IIJ)V

    return-void
.end method
