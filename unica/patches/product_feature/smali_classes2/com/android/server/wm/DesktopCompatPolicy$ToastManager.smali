.class public final Lcom/android/server/wm/DesktopCompatPolicy$ToastManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sInstance:Lcom/android/server/wm/DesktopCompatPolicy$ToastManager;


# instance fields
.field public mLastToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/DesktopCompatPolicy$ToastManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wm/DesktopCompatPolicy$ToastManager;->sInstance:Lcom/android/server/wm/DesktopCompatPolicy$ToastManager;

    return-void
.end method
