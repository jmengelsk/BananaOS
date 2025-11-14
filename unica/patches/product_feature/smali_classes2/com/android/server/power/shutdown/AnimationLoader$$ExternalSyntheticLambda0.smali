.class public final synthetic Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/shutdown/AnimationLoader;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/shutdown/AnimationLoader;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/shutdown/AnimationLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/shutdown/AnimationLoader;

    packed-switch v0, :pswitch_data_a4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-wide v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->playTimeout:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "timeout["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopAnimation reason["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "] "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Shutdown-AnimationLoader"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->stopRunnable:Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/power/shutdown/AnimationLoader;->player:Lcom/android/server/power/shutdown/WebpPlayer;

    invoke-virtual {v0}, Lcom/android/server/power/shutdown/WebpPlayer;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/shutdown/AnimationLoader;->stopRunnable:Lcom/android/server/power/shutdown/AnimationLoader$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_50
    invoke-virtual {p0}, Lcom/android/server/power/shutdown/AnimationLoader;->loadDrawable()Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object v0

    if-nez v0, :cond_69

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopAnimation can\'t load drawable "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    :cond_69
    sget-object v1, Lcom/android/server/power/shutdown/AnimationStatus;->STOP:Lcom/android/server/power/shutdown/AnimationStatus;

    invoke-virtual {p0, v1}, Lcom/android/server/power/shutdown/AnimationLoader;->changeStatus(Lcom/android/server/power/shutdown/AnimationStatus;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->stop()V

    :goto_71
    return-void

    :pswitch_72  #0x0
    invoke-virtual {p0}, Lcom/android/server/power/shutdown/AnimationLoader;->loadDrawable()Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startAnimation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Shutdown-AnimationLoader"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_a2

    sget-object v1, Lcom/android/server/power/shutdown/AnimationStatus;->START:Lcom/android/server/power/shutdown/AnimationStatus;

    invoke-virtual {p0, v1}, Lcom/android/server/power/shutdown/AnimationLoader;->changeStatus(Lcom/android/server/power/shutdown/AnimationStatus;)V

    iget v1, p0, Lcom/android/server/power/shutdown/AnimationLoader;->repeatCount:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    :cond_a2
    return-void

    nop

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_72  #00000000
    .end packed-switch
.end method
