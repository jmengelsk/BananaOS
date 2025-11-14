.class Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAppTarget:Landroid/app/prediction/AppTarget;

.field public final mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

.field public final mEventHistory:Lcom/android/server/people/data/EventHistory;

.field public mScore:F


# direct methods
.method public constructor <init>(Landroid/app/prediction/AppTarget;Lcom/android/server/people/data/EventHistory;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mAppTarget:Landroid/app/prediction/AppTarget;

    iput-object p2, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mEventHistory:Lcom/android/server/people/data/EventHistory;

    iput-object p3, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mScore:F

    return-void
.end method


# virtual methods
.method public getAppTarget()Landroid/app/prediction/AppTarget;
    .registers 1

    iget-object p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mAppTarget:Landroid/app/prediction/AppTarget;

    return-object p0
.end method

.method public getConversationInfo()Lcom/android/server/people/data/ConversationInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    return-object p0
.end method

.method public getEventHistory()Lcom/android/server/people/data/EventHistory;
    .registers 1

    iget-object p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mEventHistory:Lcom/android/server/people/data/EventHistory;

    return-object p0
.end method

.method public getScore()F
    .registers 1

    iget p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mScore:F

    return p0
.end method

.method public setScore(F)V
    .registers 2

    iput p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mScore:F

    return-void
.end method
