.class public final synthetic Lcom/android/server/power/shutdown/PngPlayer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/shutdown/PngPlayer;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/shutdown/PngPlayer;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/shutdown/PngPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/shutdown/PngPlayer;

    iput-object p2, p0, Lcom/android/server/power/shutdown/PngPlayer$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/shutdown/PngPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/shutdown/PngPlayer;

    iget-object p0, p0, Lcom/android/server/power/shutdown/PngPlayer$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lcom/android/server/power/shutdown/AnimationPlayer;->mainImageView:Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;

    invoke-static {v0, p0}, Lcom/android/server/power/shutdown/PngPlayer;->setImageToView(Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method
