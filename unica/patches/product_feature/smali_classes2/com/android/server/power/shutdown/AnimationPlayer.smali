.class public abstract Lcom/android/server/power/shutdown/AnimationPlayer;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/power/shutdown/PlayerInterface;


# instance fields
.field public final FILE_EXTENSION:Ljava/lang/String;

.field public final SHUTDOWN_MAIN_ANI_FILES:[Ljava/lang/String;

.field public final SHUTDOWN_MAIN_LOOP_FILE:Ljava/lang/String;

.field public final SHUTDOWN_SUB_ANI_FILES:[Ljava/lang/String;

.field public final SHUTDOWN_SUB_LOOP_FILE:Ljava/lang/String;

.field public final context:Landroid/content/Context;

.field public dialogListener:Lcom/android/server/power/shutdown/ShutdownDialog$1;

.field public hasSubResources:Z

.field public mainImageView:Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

.field public final resourceManager:Lcom/android/server/power/shutdown/ResourceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->hasSubResources:Z

    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->FILE_EXTENSION:Ljava/lang/String;

    const-string/jumbo p1, "shutdown"

    invoke-static {p1, p2}, Lcom/android/server/power/shutdown/AnimationPlayer;->initAnimationFiles(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->SHUTDOWN_MAIN_ANI_FILES:[Ljava/lang/String;

    const-string/jumbo p1, "sub_shutdown"

    invoke-static {p1, p2}, Lcom/android/server/power/shutdown/AnimationPlayer;->initAnimationFiles(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->SHUTDOWN_SUB_ANI_FILES:[Ljava/lang/String;

    const-string/jumbo p1, "shutdownloop"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->SHUTDOWN_MAIN_LOOP_FILE:Ljava/lang/String;

    const-string/jumbo p1, "sub_shutdownloop"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->SHUTDOWN_SUB_LOOP_FILE:Ljava/lang/String;

    new-instance p1, Lcom/android/server/power/shutdown/ResourceManager;

    invoke-direct {p1, p0}, Lcom/android/server/power/shutdown/ResourceManager;-><init>(Lcom/android/server/power/shutdown/AnimationPlayer;)V

    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->resourceManager:Lcom/android/server/power/shutdown/ResourceManager;

    return-void
.end method

.method public static initAnimationFiles(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "before"

    invoke-static {p0, v0, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "after"

    invoke-static {p0, v2, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getAnimationResolutions()Ljava/util/List;
.end method

.method public final getDisplayMode()Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;
    .locals 5

    sget-object v0, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->MAIN_MAIN:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    iget-boolean v1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->hasSubResources:Z

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;->MAIN_SUB:Lcom/android/server/power/shutdown/AnimationPlayer$DisplayMode;

    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    iget-boolean p0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->hasSubResources:Z

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean p0, p0, Lcom/android/server/power/shutdown/AnimationPlayer;->hasSubResources:Z

    if-eqz p0, :cond_4

    :goto_0
    move-object v0, v3

    :cond_4
    :goto_1
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getDisplayMode displayMode["

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "] displayType["

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "] isFolded["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "Shutdown-AnimationPlayer"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public abstract setView(Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;)V
.end method
