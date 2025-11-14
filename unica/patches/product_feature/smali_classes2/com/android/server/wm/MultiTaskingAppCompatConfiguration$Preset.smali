.class public interface abstract annotation Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$Preset;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# static fields
.field public static final DEFAULT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_LARGE_SCREEN:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->BLUR_SUPPORTED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$Preset;->DEFAULT:I

    return-void
.end method
