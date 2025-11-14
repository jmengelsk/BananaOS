.class final Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final foldedOrientation:I

.field public final unfoldedOrientation:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->foldedOrientation:I

    iput p2, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->unfoldedOrientation:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    iget v1, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->foldedOrientation:I

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->foldedOrientation:I

    if-ne v3, v1, :cond_1

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->unfoldedOrientation:I

    iget p1, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->unfoldedOrientation:I

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->foldedOrientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->unfoldedOrientation:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
