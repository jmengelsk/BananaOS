.class public final Lcom/android/server/notification/ValidateNotificationPeople$1;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/ValidateNotificationPeople;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iput-object p3, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    sget-boolean p1, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget p1, p1, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    rem-int/lit8 p1, p1, 0x64

    :cond_d
    iget-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object p1, p1, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/util/LruCache;->evictAll()V

    iget-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget p2, p1, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->val$context:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p3, p0, p2}, Lcom/android/server/notification/ValidateNotificationPeople$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;ILandroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
