.class public final Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPermissionInfo:Landroid/content/pm/PermissionInfo;

.field public final mType:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PermissionInfo;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iput p2, p0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;->mType:I

    return-void
.end method
