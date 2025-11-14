.class public final synthetic Lcom/android/server/power/shutdown/WebpPlayer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/shutdown/WebpPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/shutdown/WebpPlayer;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/power/shutdown/WebpPlayer$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/power/shutdown/WebpPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/shutdown/WebpPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/power/shutdown/WebpPlayer$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/power/shutdown/WebpPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/shutdown/WebpPlayer;

    check-cast p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->animationResolutions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->animationResolutions:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->animationResolutions:Ljava/util/List;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->animationResolutions:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->animationResolutions:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/android/server/power/shutdown/WebpPlayer;->animationResolutions:Ljava/util/List;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
