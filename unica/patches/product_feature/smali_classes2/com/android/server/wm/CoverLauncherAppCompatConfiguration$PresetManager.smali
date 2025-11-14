.class public final Lcom/android/server/wm/CoverLauncherAppCompatConfiguration$PresetManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDeviceConfig:Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppCompatConfiguration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;

    invoke-direct {v0, p1}, Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object v0, p0, Lcom/android/server/wm/CoverLauncherAppCompatConfiguration$PresetManager;->mDeviceConfig:Lcom/android/server/wm/CoverLauncherAppCompatConfiguration;

    return-void
.end method
