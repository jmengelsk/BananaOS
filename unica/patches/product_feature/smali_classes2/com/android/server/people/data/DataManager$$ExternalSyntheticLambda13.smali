.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;JLjava/lang/String;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/people/data/DataManager;

    iput-wide p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$1:J

    iput-object p4, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$3:I

    iput-object p6, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/people/data/DataManager;

    iget-wide v1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$1:J

    iget-object v3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$3:I

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;->f$4:Ljava/util/List;

    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    const/16 v7, 0x4000

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_0

    iget-object v6, p1, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-wide v6, p1, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-lez p1, :cond_0

    sub-long/2addr v1, v6

    const-wide/32 v6, 0x337f9800

    cmp-long p1, v1, v6

    if-lez p1, :cond_0

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
