.class public final Lcom/samsung/android/server/wallpaper/VirtualDisplayMode;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/VirtualDisplayMode;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public final isVirtualWallpaperDisplay(I)Z
    .registers 6

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/VirtualDisplayMode;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v0, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_1e

    array-length v0, p0

    move v2, v1

    :goto_f
    if-ge v2, v0, :cond_1e

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    if-ne p1, v3, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1e
    return v1
.end method
