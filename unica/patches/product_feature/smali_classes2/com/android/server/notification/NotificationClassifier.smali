.class public final Lcom/android/server/notification/NotificationClassifier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mClassifier:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;

.field public mClassifierSupported:Z

.field public final mContext:Landroid/content/Context;

.field public mInitialized:Z

.field public mOptionsMessage:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;

.field public mOptionsNoti:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;

.field public pkgList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationClassifier;->mInitialized:Z

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationClassifier;->mClassifierSupported:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationClassifier;->mClassifier:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;

    iput-object v0, p0, Lcom/android/server/notification/NotificationClassifier;->mOptionsNoti:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;

    iput-object v0, p0, Lcom/android/server/notification/NotificationClassifier;->mOptionsMessage:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;

    iput-object p1, p0, Lcom/android/server/notification/NotificationClassifier;->mContext:Landroid/content/Context;

    return-void
.end method
