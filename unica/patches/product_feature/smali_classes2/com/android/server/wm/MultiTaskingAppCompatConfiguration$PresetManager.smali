.class public final Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDeviceConfig:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

.field public mPreset:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppCompatConfiguration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$Preset;->DEFAULT:I

    iput v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;->mPreset:I

    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    invoke-direct {v0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;->mDeviceConfig:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    return-void
.end method

.method public static presetToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_18

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/4 v0, 0x2

    if-eq p0, v0, :cond_12

    const-string/jumbo v0, "Unknown("

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    const-string p0, "BLACK_LETTERBOX"

    return-object p0

    :cond_15
    const-string p0, "BLUR_WALLPAPER_LETTERBOX"

    return-object p0

    :cond_18
    const-string p0, "DEVICE"

    return-object p0
.end method
