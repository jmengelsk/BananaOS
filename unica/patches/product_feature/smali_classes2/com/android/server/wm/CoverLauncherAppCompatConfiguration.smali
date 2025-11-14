.class public Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppCompatConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    return-void
.end method

.method public static getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    iget-object v1, v1, Lcom/android/server/wm/AppCompatConfiguration;->mCoverLauncherPresetManager:Lcom/android/server/wm/CoverLauncherAppCompatConfiguration$PresetManager;

    iget-object v1, v1, Lcom/android/server/wm/CoverLauncherAppCompatConfiguration$PresetManager;->mDeviceConfig:Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-object v1
.end method
