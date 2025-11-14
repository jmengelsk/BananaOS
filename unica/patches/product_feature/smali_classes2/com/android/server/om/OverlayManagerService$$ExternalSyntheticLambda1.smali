.class public final synthetic Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Ljava/util/List;IZLandroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/om/OverlayManagerService;

    iput-object p2, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$3:Z

    iput-object p5, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$4:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/om/OverlayManagerService;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$3:Z

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;->f$4:Landroid/util/ArraySet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "OverlayManager"

    const-string/jumbo v4, "updateActivityManager remote exception"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v3, :cond_0

    const-string/jumbo p0, "SWT_OverlayManager"

    const-string/jumbo v0, "overlay changed broadcast to system for color theme"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/util/ArraySet;

    const-string/jumbo v0, "android"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    new-instance v1, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, v2, v0}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda3;-><init>(ILandroid/app/ActivityManagerInternal;)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    goto :goto_1

    :cond_0
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    new-instance v1, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, v2, v0}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda3;-><init>(ILandroid/app/ActivityManagerInternal;)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    :goto_1
    return-void
.end method
