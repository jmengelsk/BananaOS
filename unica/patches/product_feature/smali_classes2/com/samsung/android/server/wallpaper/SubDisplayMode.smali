.class public final Lcom/samsung/android/server/wallpaper/SubDisplayMode;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mDisplayFoldListener:Lcom/samsung/android/server/wallpaper/SubDisplayMode$2;

.field public final mHandler:Lcom/samsung/android/server/wallpaper/SubDisplayMode$1;

.field public mLidState:I


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->mLidState:I

    new-instance v0, Lcom/samsung/android/server/wallpaper/SubDisplayMode$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wallpaper/SubDisplayMode$1;-><init>(Lcom/samsung/android/server/wallpaper/SubDisplayMode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->mHandler:Lcom/samsung/android/server/wallpaper/SubDisplayMode$1;

    new-instance v0, Lcom/samsung/android/server/wallpaper/SubDisplayMode$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wallpaper/SubDisplayMode$2;-><init>(Lcom/samsung/android/server/wallpaper/SubDisplayMode;)V

    iput-object v0, p0, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->mDisplayFoldListener:Lcom/samsung/android/server/wallpaper/SubDisplayMode$2;

    const-string/jumbo v1, "SubDisplayMode"

    invoke-static {v1, v1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    sget-boolean p0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "window"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, v0}, Landroid/view/IWindowManager;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static getFolderStateBasedWhich(II)I
    .locals 2

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez v0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getFolderStateBasedWhich state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SubDisplayMode"

    invoke-static {v1, v0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    or-int/lit8 p0, p0, 0x10

    return p0

    :cond_1
    or-int/lit8 p0, p0, 0x4

    return p0
.end method


# virtual methods
.method public final getFolderStateBasedWhich(I)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return p1

    :cond_1
    iget p0, p0, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->mLidState:I

    invoke-static {p1, p0}, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(II)I

    move-result p0

    return p0
.end method

.method public final updateLidStateFromInputManager()V
    .locals 5

    const-string/jumbo v0, "SubDisplayMode"

    const/4 v1, -0x1

    :try_start_0
    const-string/jumbo v2, "input"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "updateLidStateFromInputManager: inputManagerService is null! Setting lidState to UNKNOWN(ABSENT)"

    invoke-static {v0, v2}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 v3, -0x100

    const/4 v4, 0x0

    invoke-interface {v2, v1, v3, v4}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 v1, 0x1

    :catch_0
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateLidStateFromInputManager: lidState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/samsung/android/server/wallpaper/SubDisplayMode;->mLidState:I

    return-void
.end method
