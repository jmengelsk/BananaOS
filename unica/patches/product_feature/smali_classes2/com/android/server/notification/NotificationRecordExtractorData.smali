.class public final Lcom/android/server/notification/NotificationRecordExtractorData;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAllowBubble:Z

.field public final mChannel:Landroid/app/NotificationChannel;

.field public final mGroupKey:Ljava/lang/String;

.field public final mImportance:I

.field public final mIsBubble:Z

.field public final mIsConversation:Z

.field public final mOverridePeople:Ljava/util/ArrayList;

.field public final mPosition:I

.field public final mProposedImportance:I

.field public final mRankingScore:F

.field public final mSensitiveContent:Z

.field public final mShowBadge:Z

.field public final mSmartReplies:Ljava/util/ArrayList;

.field public final mSnoozeCriteria:Ljava/util/ArrayList;

.field public final mSuppressVisually:Ljava/lang/Integer;

.field public final mSystemSmartActions:Ljava/util/ArrayList;

.field public final mUserSentiment:Ljava/lang/Integer;

.field public final mVisibility:I


# direct methods
.method public constructor <init>(IIZZZLandroid/app/NotificationChannel;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;IFZIZ)V
    .registers 19

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mPosition:I

    iput p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mVisibility:I

    iput-boolean p3, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mShowBadge:Z

    iput-boolean p4, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mAllowBubble:Z

    iput-boolean p5, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mIsBubble:Z

    iput-object p6, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    iput-object p7, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    iput-object p9, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    iput-object p10, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    iput-object p11, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSuppressVisually:Ljava/lang/Integer;

    iput-object p12, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    iput-object p13, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    iput p14, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mImportance:I

    iput p15, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mRankingScore:F

    move/from16 p1, p16

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mIsConversation:Z

    move/from16 p1, p17

    iput p1, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mProposedImportance:I

    move/from16 p1, p18

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSensitiveContent:Z

    return-void
.end method


# virtual methods
.method public final hasDiffForLoggingLocked(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 7

    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mPosition:I

    if-ne v0, p2, :cond_81

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_81

    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_81

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mPeopleOverride:Ljava/util/ArrayList;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_81

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mSnoozeCriteria:Ljava/util/ArrayList;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_81

    iget p2, p1, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_81

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mSystemGeneratedSmartActions:Ljava/util/ArrayList;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_81

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mSmartReplies:Ljava/util/ArrayList;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_81

    iget p2, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mImportance:I

    if-ne v0, p2, :cond_81

    iget p2, p1, Lcom/android/server/notification/NotificationRecord;->mRankingScore:F

    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mRankingScore:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v0, p2

    const-wide v2, 0x3f1a36e2eb1c432dL  # 1.0E-4

    cmpg-double p2, v0, v2

    if-gez p2, :cond_81

    iget-boolean p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mIsConversation:Z

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    if-ne p2, v0, :cond_81

    iget p2, p1, Lcom/android/server/notification/NotificationRecord;->mProposedImportance:I

    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mProposedImportance:I

    if-ne v0, p2, :cond_81

    iget-boolean p1, p1, Lcom/android/server/notification/NotificationRecord;->mSensitiveContent:Z

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSensitiveContent:Z

    if-ne p0, p1, :cond_81

    const/4 p0, 0x0

    return p0

    :cond_81
    const/4 p0, 0x1

    return p0
.end method

.method public final hasDiffForRankingLocked(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 4

    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mPosition:I

    if-ne v0, p2, :cond_94

    iget p2, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mVisibility:I

    if-ne v0, p2, :cond_94

    iget-boolean p2, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mShowBadge:Z

    if-ne v0, p2, :cond_94

    iget-boolean p2, p1, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mAllowBubble:Z

    if-ne v0, p2, :cond_94

    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result p2

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mIsBubble:Z

    if-ne v0, p2, :cond_94

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_94

    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_94

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mPeopleOverride:Ljava/util/ArrayList;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_94

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mSnoozeCriteria:Ljava/util/ArrayList;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_94

    iget p2, p1, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_94

    iget p2, p1, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSuppressVisually:Ljava/lang/Integer;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_94

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mSystemGeneratedSmartActions:Ljava/util/ArrayList;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_94

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mSmartReplies:Ljava/util/ArrayList;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_94

    iget p2, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mImportance:I

    if-ne v0, p2, :cond_94

    iget p2, p1, Lcom/android/server/notification/NotificationRecord;->mProposedImportance:I

    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mProposedImportance:I

    if-ne v0, p2, :cond_94

    iget-boolean p1, p1, Lcom/android/server/notification/NotificationRecord;->mSensitiveContent:Z

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSensitiveContent:Z

    if-ne p0, p1, :cond_94

    const/4 p0, 0x0

    return p0

    :cond_94
    const/4 p0, 0x1

    return p0
.end method
