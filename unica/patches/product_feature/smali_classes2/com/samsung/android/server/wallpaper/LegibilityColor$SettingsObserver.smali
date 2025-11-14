.class public final Lcom/samsung/android/server/wallpaper/LegibilityColor$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/wallpaper/LegibilityColor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wallpaper/LegibilityColor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$SettingsObserver;->this$0:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$SettingsObserver;->this$0:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z

    move-result v0

    iput-boolean v0, p1, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mAllowScreenRotateSystem:Z

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor$SettingsObserver;->this$0:Lcom/samsung/android/server/wallpaper/LegibilityColor;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wallpaper/LegibilityColor;->mAllowScreenRotateLock:Z

    return-void
.end method
