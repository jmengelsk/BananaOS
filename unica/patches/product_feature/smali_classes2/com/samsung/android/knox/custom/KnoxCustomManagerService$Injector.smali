.class public Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .locals 0

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final getDexLaumcherConfiguration()Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    return-object p0
.end method

.method public final getEKM()Lcom/samsung/android/knox/EnterpriseKnoxManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object p0

    return-object p0
.end method

.method public final getGalaxyAIConfiguration()Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/appconfig/GalaxyAIConfiguration;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final getKLM()Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    move-result-object p0

    return-object p0
.end method

.method public final getPrivateKnoxCustom()Lcom/samsung/android/knox/custom/PrivateKnoxCustom;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    move-result-object p0

    return-object p0
.end method

.method public final getStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final getSubscriptionManager()Landroid/telephony/SubscriptionManager;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method public final getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method public final getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    return-object p0
.end method

.method public final getWindowManagerService()Landroid/view/IWindowManager;
    .locals 0

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    return-object p0
.end method

.method public final getlauncherConfiguration()Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final settingsGlobalPutInt(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final settingsSecurePutInt(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final settingsSecurePutString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final settingsSystemPutInt(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
