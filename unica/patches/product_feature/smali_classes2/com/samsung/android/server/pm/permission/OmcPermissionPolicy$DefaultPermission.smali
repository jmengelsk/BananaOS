.class public final Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCertDigests:Ljava/lang/String;

.field public final mFixedGrantedPermission:Ljava/util/Set;

.field public final mNonFixedGrantedPermission:Ljava/util/Set;

.field public final mRevokedPermission:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mFixedGrantedPermission:Ljava/util/Set;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mNonFixedGrantedPermission:Ljava/util/Set;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mRevokedPermission:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mCertDigests:Ljava/lang/String;

    return-void
.end method
