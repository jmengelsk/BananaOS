.class public final Lcom/android/server/security/advancedprotection/features/DisallowInstallUnknownSourcesAdvancedProtectionHook;
.super Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/security/advancedprotection/AdvancedProtectionFeature;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/security/advancedprotection/AdvancedProtectionFeature;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/DisallowInstallUnknownSourcesAdvancedProtectionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/server/security/advancedprotection/features/DisallowInstallUnknownSourcesAdvancedProtectionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p2}, Lcom/android/server/security/advancedprotection/features/DisallowInstallUnknownSourcesAdvancedProtectionHook;->onAdvancedProtectionChanged(Z)V

    return-void
.end method


# virtual methods
.method public final getFeature()Landroid/security/advancedprotection/AdvancedProtectionFeature;
    .registers 1

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/DisallowInstallUnknownSourcesAdvancedProtectionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    return-object p0
.end method

.method public final isAvailable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final onAdvancedProtectionChanged(Z)V
    .registers 5

    const-string/jumbo v0, "no_install_unknown_sources_globally"

    const-string/jumbo v1, "android.security.advancedprotection"

    const-string v2, "AdvancedProtectionDisallowInstallUnknown"

    if-eqz p1, :cond_16

    const-string/jumbo p1, "Setting DISALLOW_INSTALL_UNKNOWN_SOURCES_GLOBALLY restriction"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/DisallowInstallUnknownSourcesAdvancedProtectionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/DevicePolicyManager;->addUserRestrictionGlobally(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    const-string p1, "Clearing DISALLOW_INSTALL_UNKNOWN_SOURCES_GLOBALLY restriction"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/DisallowInstallUnknownSourcesAdvancedProtectionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/DevicePolicyManager;->clearUserRestrictionGlobally(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
