.class public final synthetic Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    check-cast p1, Lcom/android/server/pm/permission/LegacyPermission;

    new-instance v0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;

    iget-object v1, p1, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p1, p1, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    invoke-direct {v0, v1, p1}, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;I)V

    iget-object p1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
