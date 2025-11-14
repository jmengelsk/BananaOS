.class public final Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/permission/PermissionManagerLocal;


# instance fields
.field public final policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/AccessCheckingService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "uid"

    const-string/jumbo v1, "permission"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.server.permission.access.permission.AppIdPermissionPolicy"

    invoke-static {v0, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    return-void
.end method


# virtual methods
.method public final isSignaturePermissionAllowlistForceEnforced()Z
    .locals 1

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isSignaturePermissionAllowlistForceEnforced:Z

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setSignaturePermissionAllowlistForceEnforced(Z)V
    .locals 1

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    iput-boolean p1, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isSignaturePermissionAllowlistForceEnforced:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
