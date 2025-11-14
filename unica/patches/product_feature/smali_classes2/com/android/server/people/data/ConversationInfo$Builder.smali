.class public final Lcom/android/server/people/data/ConversationInfo$Builder;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mContactPhoneNumber:Ljava/lang/String;

.field public mContactUri:Landroid/net/Uri;

.field public mConversationFlags:I

.field public mCreationTimestamp:J

.field public mCurrStatuses:Ljava/util/Map;

.field public final mLastEventTimestamp:J

.field public mLocusId:Landroid/content/LocusId;

.field public mNotificationChannelId:Ljava/lang/String;

.field public final mParentNotificationChannelId:Ljava/lang/String;

.field public mShortcutFlags:I

.field public mShortcutId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/people/data/ConversationInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    if-nez v0, :cond_13

    iget-object v0, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    goto :goto_1c

    :cond_13
    iget-object v1, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :goto_1c
    iget-object v0, p1, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLocusId:Landroid/content/LocusId;

    iget-object v0, p1, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactUri:Landroid/net/Uri;

    iget-object v0, p1, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactPhoneNumber:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mNotificationChannelId:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mParentNotificationChannelId:Ljava/lang/String;

    iget-wide v0, p1, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    iput-wide v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLastEventTimestamp:J

    iget-wide v0, p1, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iput-wide v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCreationTimestamp:J

    iget v0, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iput v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutFlags:I

    iget v0, p1, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iput v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    iget-object p1, p1, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/server/people/data/ConversationInfo;
    .registers 4

    iget-object v0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/people/data/ConversationInfo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutId:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLocusId:Landroid/content/LocusId;

    iput-object v1, v0, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mContactPhoneNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mNotificationChannelId:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mParentNotificationChannelId:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mLastEventTimestamp:J

    iput-wide v1, v0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    iget-wide v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCreationTimestamp:J

    iput-wide v1, v0, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    iget v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mShortcutFlags:I

    iput v1, v0, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    iget v1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    iput v1, v0, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mCurrStatuses:Ljava/util/Map;

    iput-object p0, v0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    return-object v0
.end method

.method public final setConversationFlag(IZ)V
    .registers 3

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    return-void

    :cond_8
    iget p2, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/people/data/ConversationInfo$Builder;->mConversationFlags:I

    return-void
.end method
