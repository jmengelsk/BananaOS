.class public abstract Lcom/samsung/android/camera/scpm/compatibilities/CompatibilityUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    sput-boolean v0, Lcom/samsung/android/camera/scpm/compatibilities/CompatibilityUtils;->DEBUG:Z

    return-void
.end method

.method public static clearCompatibilities(Lcom/android/internal/compat/IPlatformCompat;Ljava/lang/String;)V
    .registers 7

    sget-boolean v0, Lcom/samsung/android/camera/scpm/compatibilities/CompatibilityUtils;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "clearCompatibilities "

    const-string v1, "CameraService/CompatibilityUtils"

    invoke-static {v0, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-static {}, Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;->values()[Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_2a

    aget-object v3, v0, v2

    sget-object v4, Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;->DEFAULT_COMPATIBILITIES:Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;

    if-ne v3, v4, :cond_1b

    goto :goto_27

    :cond_1b
    invoke-virtual {v3}, Lcom/samsung/android/camera/scpm/compatibilities/Compatibilities;->getExtraPolicy()J

    move-result-wide v3

    :try_start_1f
    invoke-interface {p0, v3, v4, p1}, Lcom/android/internal/compat/IPlatformCompat;->clearOverride(JLjava/lang/String;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2a
    return-void
.end method

.method public static setCompatibilities(Lcom/android/internal/compat/IPlatformCompat;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/camera/scpm/compatibilities/CompatibilityUtils;->DEBUG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setCompatibilities "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService/CompatibilityUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance v2, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {v2, v0, v1}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {p2, v2}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    :try_start_37
    invoke-interface {p0, p2, p1}, Lcom/android/internal/compat/IPlatformCompat;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
