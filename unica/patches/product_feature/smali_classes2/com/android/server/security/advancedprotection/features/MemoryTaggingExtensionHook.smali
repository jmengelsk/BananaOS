.class public final Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;
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

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/security/advancedprotection/AdvancedProtectionFeature;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p2}, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;->onAdvancedProtectionChanged(Z)V

    return-void
.end method


# virtual methods
.method public final getFeature()Landroid/security/advancedprotection/AdvancedProtectionFeature;
    .registers 1

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    return-object p0
.end method

.method public final isAvailable()Z
    .registers 2

    const-string/jumbo p0, "ro.arm64.memtag.bootctl_settings_toggle"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const-string/jumbo v0, "ro.arm64.memtag.bootctl_device_policy_manager"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final onAdvancedProtectionChanged(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;->isAvailable()Z

    move-result v0

    const-string v1, "AdvancedProtectionMTE"

    if-nez v0, :cond_f

    const-string/jumbo p0, "MTE unavailable on device, skipping."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    const-string/jumbo v0, "Setting MTE state to "

    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_15
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v0, "android.security.advancedprotection"

    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->setMtePolicy(Ljava/lang/String;I)V
    :try_end_1d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_15 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p0

    const-string/jumbo p1, "Setting MTE policy unsupported"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
