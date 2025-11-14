.class public final Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;
.super Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/security/advancedprotection/AdvancedProtectionFeature;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/security/advancedprotection/AdvancedProtectionFeature;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p2}, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->onAdvancedProtectionChanged(Z)V

    return-void
.end method


# virtual methods
.method public final getFeature()Landroid/security/advancedprotection/AdvancedProtectionFeature;
    .registers 1

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    return-object p0
.end method

.method public final isAvailable()Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v0, "android.hardware.telephony"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final onAdvancedProtectionChanged(Z)V
    .registers 5

    const-string/jumbo v0, "no_cellular_2g"

    const-string/jumbo v1, "android.security.advancedprotection"

    const-string v2, "AdvancedProtectionDisallowCellular2G"

    if-eqz p1, :cond_16

    const-string/jumbo p1, "Setting DISALLOW_CELLULAR_2G_GLOBALLY restriction"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/DevicePolicyManager;->addUserRestrictionGlobally(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    const-string p1, "Clearing DISALLOW_CELLULAR_2G_GLOBALLY restriction"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/DevicePolicyManager;->clearUserRestrictionGlobally(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
