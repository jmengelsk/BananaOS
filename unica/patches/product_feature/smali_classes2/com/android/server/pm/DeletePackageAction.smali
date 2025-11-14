.class public final Lcom/android/server/pm/DeletePackageAction;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDeletingPs:Lcom/android/server/pm/PackageSetting;

.field public final mDisabledPs:Lcom/android/server/pm/PackageSetting;

.field public final mFlags:I

.field public final mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(ILandroid/os/UserHandle;Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    iput-object p5, p0, Lcom/android/server/pm/DeletePackageAction;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    iput-object p3, p0, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    iput p1, p0, Lcom/android/server/pm/DeletePackageAction;->mFlags:I

    iput-object p2, p0, Lcom/android/server/pm/DeletePackageAction;->mUser:Landroid/os/UserHandle;

    return-void
.end method
