.class public abstract Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sAsmRestrictionsEnabled:I

.field public static sAsmToastsEnabled:I


# direct methods
.method public static shouldRestrictActivitySwitch(I)Z
    .registers 3

    const-wide/32 v0, 0xdbe868a

    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_11

    sget p0, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sAsmRestrictionsEnabled:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public static shouldShowToast(I)Z
    .registers 4

    sget v0, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sAsmToastsEnabled:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_14

    if-ne v0, v2, :cond_12

    const-wide/32 v0, 0xdbe868a

    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    return p0

    :cond_14
    :goto_14
    return v2
.end method
