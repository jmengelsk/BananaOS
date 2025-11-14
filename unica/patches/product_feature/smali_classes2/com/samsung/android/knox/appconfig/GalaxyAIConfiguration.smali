.class public Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final TAG:Ljava/lang/String; = "GalaxyAIConfiguration"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration;-><init>(Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration;->mInjector:Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;

    iget-object p1, p1, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final action(Landroid/os/Bundle;I)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v2, 0x30b73d5

    if-eq p2, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo p2, "key_samsung_interpreter"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p2, "GalaxyAIConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown restriction key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final clearAllRestrictions(Landroid/os/Bundle;I)V
    .locals 0

    return-void
.end method

.method public final setInterpreterState(Landroid/os/Bundle;IZ)V
    .locals 2

    const-string/jumbo v0, "grayout"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p3, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string/jumbo p1, "com.samsung.android.app.interpreter"

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration;->mInjector:Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;

    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    return-void

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration;->mInjector:Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;

    iget-object p0, p0, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    return-void
.end method
