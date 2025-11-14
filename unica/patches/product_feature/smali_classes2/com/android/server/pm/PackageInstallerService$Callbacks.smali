.class public final Lcom/android/server/pm/PackageInstallerService$Callbacks;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method public static invokeCallback(Landroid/content/pm/IPackageInstallerCallback;Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, v0, p1}, Landroid/content/pm/IPackageInstallerCallback;->onSessionFinished(IZ)V

    return-void

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, v0, p1}, Landroid/content/pm/IPackageInstallerCallback;->onSessionProgressChanged(IF)V

    return-void

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, v0, p1}, Landroid/content/pm/IPackageInstallerCallback;->onSessionActiveChanged(IZ)V

    return-void

    :cond_3
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageInstallerCallback;->onSessionBadgingChanged(I)V

    return-void

    :cond_4
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageInstallerCallback;->onSessionCreated(I)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->this$0:Lcom/android/server/pm/PackageInstallerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/content/pm/IPackageInstallerCallback;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;

    iget-object v7, v6, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;->userCheck:Ljava/util/function/IntPredicate;

    invoke-interface {v7, v1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->this$0:Lcom/android/server/pm/PackageInstallerService;

    iget v6, v6, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;->callingUid:I

    invoke-virtual {v7, v0}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    iget v8, v7, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-eq v6, v8, :cond_1

    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/android/server/pm/Computer;->canQueryPackage(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    :try_start_0
    invoke-static {v5, p1}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->invokeCallback(Landroid/content/pm/IPackageInstallerCallback;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method
