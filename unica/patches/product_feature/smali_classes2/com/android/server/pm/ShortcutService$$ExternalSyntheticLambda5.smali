.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iput p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_50

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ShortcutService$3;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/os/UserHandle;

    iget-object v0, v0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    iget-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mUriPermissionOwner:Landroid/os/IBinder;

    check-cast v1, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    iget-object v1, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_22
    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2b

    const/4 v5, 0x1

    :cond_2b
    if-eqz v5, :cond_36

    invoke-virtual {v0, p0}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object p0

    iput-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Ljava/lang/String;

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_38

    :cond_36
    :goto_36
    monitor-exit v1

    return-void

    :goto_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_34

    throw p0

    :pswitch_3a  #0x0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/ShortcutLauncher;

    sget-object v1, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageItem;->removeShortcutPackageItem()V

    :cond_49
    if-eqz p0, :cond_4e

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->removeShortcutPackageItem()V

    :cond_4e
    return-void

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_3a  #00000000
    .end packed-switch
.end method
