.class public final Lcom/samsung/android/camera/scpm/ScpmHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final APP_VERSION:Ljava/lang/String;

.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mScpmCallback:Lcom/samsung/android/camera/scpm/ScpmReceiver$1;

.field public mToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/camera/scpm/ScpmHelper;->DEBUG:Z

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/camera/scpm/ScpmHelper;->APP_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/camera/scpm/ScpmReceiver$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/camera/scpm/ScpmHelper;->mScpmCallback:Lcom/samsung/android/camera/scpm/ScpmReceiver$1;

    return-void
.end method
