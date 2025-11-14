.class public final Lcom/android/server/notification/ValidateNotificationPeople$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$prr:Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

.field public final synthetic val$s:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$2;->val$prr:Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$2;->val$s:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$2;->val$prr:Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    invoke-virtual {v0}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->work()V

    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$2;->val$s:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
