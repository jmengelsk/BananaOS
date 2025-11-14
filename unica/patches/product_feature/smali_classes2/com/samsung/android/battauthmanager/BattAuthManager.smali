.class public final Lcom/samsung/android/battauthmanager/BattAuthManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mWpcAuthenticator:Lcom/samsung/android/battauthmanager/WpcAuthenticator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BattAuthManager"

    const-string v1, "BattAuthManager start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "isFirstBoot : "

    :try_start_d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/battauthmanager/BattAuthManager;->mWpcAuthenticator:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    if-nez v1, :cond_4e

    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/battauthmanager/BattAuthManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    iget-object v3, p0, Lcom/samsung/android/battauthmanager/BattAuthManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/battauthmanager/BattAuthManager;->mWpcAuthenticator:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    if-eqz v2, :cond_4e

    invoke-static {}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->removeDigests()V
    :try_end_44
    .catchall {:try_start_d .. :try_end_44} :catchall_45

    return-void

    :catchall_45
    move-exception p0

    const-string p1, "BattAuthManager error"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4e
    return-void
.end method
