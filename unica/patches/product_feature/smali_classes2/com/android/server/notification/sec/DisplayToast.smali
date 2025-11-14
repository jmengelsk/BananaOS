.class public final Lcom/android/server/notification/sec/DisplayToast;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sLogMsg:Lcom/android/server/notification/sec/DisplayToast;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mMessage:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mUid:I

.field public sdfNow:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/notification/sec/DisplayToast;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yy-MM-dd_HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/notification/sec/DisplayToast;->sdfNow:Ljava/text/SimpleDateFormat;

    sput-object v0, Lcom/android/server/notification/sec/DisplayToast;->sLogMsg:Lcom/android/server/notification/sec/DisplayToast;

    return-void
.end method
