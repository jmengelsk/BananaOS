.class public abstract Lcom/android/server/wm/DesktopModeHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ENFORCE_DEVICE_RESTRICTIONS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "persist.wm.debug.desktop_mode_enforce_device_restrictions"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/DesktopModeHelper;->ENFORCE_DEVICE_RESTRICTIONS:Z

    return-void
.end method

.method public static canEnterDesktopMode(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/window/DesktopModeFlags;->ENABLE_DESKTOP_WINDOWING_MODE:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/window/DesktopModeFlags;->isDesktopModeForcedEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static canInternalDisplayHostDesktops(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110070

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isDeviceEligibleForDesktopMode(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lcom/android/server/wm/DesktopModeHelper;->shouldEnforceDeviceRestrictions()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_PROJECTED_DISPLAY_DESKTOP_MODE:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    const v2, 0x11101d5

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->canInternalDisplayHostDesktops(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x11101d4

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez v0, :cond_4

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    return v3

    :cond_4
    :goto_1
    return v1
.end method

.method public static shouldEnforceDeviceRestrictions()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/DesktopModeHelper;->ENFORCE_DEVICE_RESTRICTIONS:Z

    return v0
.end method
