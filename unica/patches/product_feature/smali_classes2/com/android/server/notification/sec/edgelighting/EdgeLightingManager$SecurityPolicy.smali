.class public final Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$SecurityPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public static -$$Nest$menforceCallingPermission(Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_21

    :cond_13
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p0

    if-nez p0, :cond_22

    :goto_21
    return-void

    :cond_22
    const-string/jumbo p0, "Permission denied:"

    const-string v1, " uid="

    const-string v2, ", you need system uid or to be signed with the system certificate."

    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EdgeLightingManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/SecurityException;

    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$SecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method


# virtual methods
.method public final enforceCallFromPackage(Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$SecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    return-void
.end method

.method public final enforceCallingPermissionFromHost()V
    .registers 3

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingManager$SecurityPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.permission.EDGE_LIGHTING_HOST"

    const-string v1, "EdgeLightingManager"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
