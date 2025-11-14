.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field public final synthetic f$1:Landroid/app/wallpaper/WallpaperDescription;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$7:Lcom/android/server/wallpaper/WallpaperData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/wallpaper/WallpaperDescription;IIZZLcom/android/server/wallpaper/WallpaperData;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;->f$1:Landroid/app/wallpaper/WallpaperDescription;

    iput p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;->f$2:I

    iput p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;->f$3:I

    iput-boolean p5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;->f$4:Z

    iput-boolean p6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;->f$5:Z

    iput-object p7, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;->f$7:Lcom/android/server/wallpaper/WallpaperData;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;->f$1:Landroid/app/wallpaper/WallpaperDescription;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;->f$2:I

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;->f$3:I

    iget-boolean v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;->f$4:Z

    iget-boolean v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;->f$5:Z

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;->f$7:Lcom/android/server/wallpaper/WallpaperData;

    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-object v7, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    const-string v2, ""

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperDescriptionInternal(Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;IIZZLandroid/os/Bundle;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
