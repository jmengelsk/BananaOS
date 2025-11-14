.class public interface abstract Lcom/android/server/wm/BackgroundActivityStartCallback;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final RESULT_FALSE:Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;

.field public static final RESULT_TRUE:Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;-><init>(Landroid/os/IBinder;Z)V

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartCallback;->RESULT_FALSE:Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;-><init>(Landroid/os/IBinder;Z)V

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartCallback;->RESULT_TRUE:Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;

    return-void
.end method
