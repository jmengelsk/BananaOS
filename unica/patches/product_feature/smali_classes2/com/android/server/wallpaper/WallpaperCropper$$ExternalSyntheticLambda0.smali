.class public final synthetic Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(IIILandroid/graphics/Rect;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 4

    iget p2, p0, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;->f$1:I

    iget p3, p0, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setCrop(Landroid/graphics/Rect;)V

    return-void
.end method
