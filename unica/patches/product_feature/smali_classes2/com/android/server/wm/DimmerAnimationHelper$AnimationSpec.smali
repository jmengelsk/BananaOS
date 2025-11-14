.class public final Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# instance fields
.field public final mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

.field public final mBlur:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

.field public mCurrentAlpha:F

.field public mCurrentBlur:I

.field public final mDuration:J

.field public mStarted:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentAlpha:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentBlur:I

    iput-boolean v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mStarted:Z

    iput-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    iput-object p2, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mBlur:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    iput-wide p3, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mDuration:J

    return-void
.end method


# virtual methods
.method public final apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mStarted:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mStarted:Z

    return-void

    :cond_0
    long-to-float p3, p3

    invoke-virtual {p0}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->getDuration()J

    move-result-wide v0

    long-to-float p4, v0

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    div-float/2addr p3, p4

    goto :goto_0

    :cond_1
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_0
    iget-object p4, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    iget-object v0, p4, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mFinishValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object p4, p4, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mStartValue:Ljava/lang/Object;

    move-object v1, p4

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, p3

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    add-float/2addr p4, v0

    iput p4, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentAlpha:F

    float-to-int p3, p3

    iget-object p4, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mBlur:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    iget-object v0, p4, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mFinishValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p4, p4, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mStartValue:Ljava/lang/Object;

    move-object v1, p4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    mul-int/2addr v0, p3

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/2addr p3, v0

    iput p3, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentBlur:I

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p3

    const-string p4, " after release"

    const-string v0, "Dimmer#AnimationSpec tried to access "

    const-string/jumbo v1, "WindowManager"

    if-eqz p3, :cond_2

    :try_start_0
    iget p3, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentAlpha:F

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget p0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentBlur:I

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "from_alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    iget-object v1, v0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mStartValue:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, " to_alpha="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mFinishValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "from_blur="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mBlur:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    iget-object v0, p2, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mStartValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " to_blur="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mFinishValue:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string p2, " duration="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method public final dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6

    const-wide v0, 0x10b00000003L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    iget-object v3, v2, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mStartValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-wide v4, 0x10200000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    iget-object v2, v2, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;->mFinishValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-wide v3, 0x10200000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v2, 0x10300000003L

    iget-wide v4, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mDuration:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mDuration:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Animation spec: alpha="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mAlpha:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", blur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mBlur:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
