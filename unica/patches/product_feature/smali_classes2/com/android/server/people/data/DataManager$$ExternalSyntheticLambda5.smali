.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;JI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/people/data/DataManager;

    iput-wide p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$1:J

    iput p4, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 13

    iget-object v1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/people/data/DataManager;

    iget-wide v2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$1:J

    iget p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;->f$2:I

    check-cast p1, Lcom/android/server/people/data/PackageData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;

    iget v5, p1, Lcom/android/server/people/data/PackageData;->mUserId:I

    invoke-direct/range {v0 .. v6}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/people/data/DataManager;JLjava/lang/String;ILjava/util/List;)V

    iget-object p1, p1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    invoke-virtual {p1, v0}, Lcom/android/server/people/data/ConversationStore;->forAllConversations(Ljava/util/function/Consumer;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_36

    move-object v7, v4

    iget-object v4, v1, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object p1, v1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v10, 0x4000

    move v9, v5

    move-object v8, v6

    move v5, p0

    move-object v6, p1

    invoke-virtual/range {v4 .. v10}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    :cond_36
    return-void
.end method
