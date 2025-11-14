.class public final Lcom/android/server/tv/UinputBridge;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCloseGuard:Ldalvik/system/CloseGuard;

.field public mPtr:J

.field public mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/UinputBridge;->mCloseGuard:Ldalvik/system/CloseGuard;

    iput-wide p2, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    iput-object p1, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    const-string/jumbo p0, "close"

    invoke-virtual {v0, p0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/UinputBridge;->mCloseGuard:Ldalvik/system/CloseGuard;

    const/4 v1, 0x1

    if-lt p3, v1, :cond_3

    if-lt p4, v1, :cond_3

    if-lt p5, v1, :cond_2

    const/16 v1, 0x20

    if-gt p5, v1, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p3, p4, p5}, Lcom/android/server/tv/UinputBridge;->nativeOpen(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    const-wide/16 v1, 0x0

    cmp-long p3, p3, v1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    const-string/jumbo p0, "close"

    invoke-virtual {v0, p0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Could not open uinput device "

    invoke-static {p1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Token cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Touchpad must support between 1 and 32 pointers."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Touchpad must be at least 1x1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeGamepadOpen(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native nativeOpen(Ljava/lang/String;Ljava/lang/String;III)J
.end method

.method private static native nativeSendGamepadAxisValue(JIF)V
.end method

.method private static native nativeSendGamepadKey(JIZ)V
.end method

.method private static native nativeSendKey(JIZ)V
.end method

.method private static native nativeSendPointerDown(JIII)V
.end method

.method private static native nativeSendPointerSync(J)V
.end method

.method private static native nativeSendPointerUp(JI)V
.end method

.method public static openGamepad(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/tv/UinputBridge;
    .locals 4

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/tv/UinputBridge;->nativeGamepadOpen(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance p1, Lcom/android/server/tv/UinputBridge;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/tv/UinputBridge;-><init>(Landroid/os/IBinder;J)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Could not open uinput device "

    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Token cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final clear(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    invoke-static {p0, p1}, Lcom/android/server/tv/UinputBridge;->nativeClear(J)V

    :cond_0
    return-void
.end method

.method public final close(Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->clear(Landroid/os/IBinder;)V

    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/tv/UinputBridge;->nativeClose(J)V

    iput-wide v2, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    iget-object p0, p0, Lcom/android/server/tv/UinputBridge;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {p0}, Ldalvik/system/CloseGuard;->close()V

    :cond_0
    return-void
.end method

.method public final finalize()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/UinputBridge;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    iget-object v1, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/server/tv/UinputBridge;->close(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public final sendGamepadAxisValue(Landroid/os/IBinder;IF)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/tv/UinputBridge;->nativeSendGamepadAxisValue(JIF)V

    :cond_0
    return-void
.end method

.method public final sendGamepadKey(IZLandroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p3}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/tv/UinputBridge;->nativeSendGamepadKey(JIZ)V

    :cond_0
    return-void
.end method

.method public final sendKeyDown(Landroid/os/IBinder;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/tv/UinputBridge;->nativeSendKey(JIZ)V

    :cond_0
    return-void
.end method

.method public final sendKeyUp(Landroid/os/IBinder;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/tv/UinputBridge;->nativeSendKey(JIZ)V

    :cond_0
    return-void
.end method

.method public final sendPointerDown(Landroid/os/IBinder;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/tv/UinputBridge;->nativeSendPointerDown(JIII)V

    :cond_0
    return-void
.end method

.method public final sendPointerSync(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    invoke-static {p0, p1}, Lcom/android/server/tv/UinputBridge;->nativeSendPointerSync(J)V

    :cond_0
    return-void
.end method

.method public final sendPointerUp(Landroid/os/IBinder;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    invoke-static {p0, p1, p2}, Lcom/android/server/tv/UinputBridge;->nativeSendPointerUp(JI)V

    :cond_0
    return-void
.end method
