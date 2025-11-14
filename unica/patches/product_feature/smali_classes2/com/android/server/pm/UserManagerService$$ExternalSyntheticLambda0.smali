.class public final synthetic Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerService;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerService;

    iput-object p2, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iput p3, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerService;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iget p0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda0;->f$2:I

    sget-object v2, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionToken:Landroid/os/IBinder;

    invoke-interface {v2, v1, v0, p0}, Lcom/android/internal/app/IAppOpsService;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "UserManagerService"

    const-string/jumbo v0, "Unable to notify AppOpsService of UserRestrictions"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
