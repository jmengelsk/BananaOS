.class public final synthetic Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/DeletePackageHelper;

    iget-object v6, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->f$1:I

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/IPackageDeleteObserver2;

    iget p0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->f$1:I

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v0, "android.content.pm.extra.CALLBACK"

    new-instance v3, Landroid/content/pm/PackageManager$UninstallCompleteCallback;

    invoke-interface {v1}, Landroid/content/pm/IPackageDeleteObserver2;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/pm/PackageManager$UninstallCompleteCallback;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.content.pm.extra.DELETE_FLAGS"

    invoke-virtual {v2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-interface {v1, v2}, Landroid/content/pm/IPackageDeleteObserver2;->onUserActionRequired(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/content/pm/IPackageDeleteObserver2;

    const-string v2, "Attempted to delete "

    :try_start_1
    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", callingUid: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", observer.hashCode(): "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/content/pm/IPackageDeleteObserver2;->hashCode()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
