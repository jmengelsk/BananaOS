.class public final Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mOverrideToSettingsIdList:Ljava/util/List;

.field public final mSender:Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$$ExternalSyntheticLambda0;

.field public mSettings:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$$ExternalSyntheticLambda0;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;->mSender:Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final addStatus(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_30

    if-nez p2, :cond_5

    goto :goto_30

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;->mSettings:Ljava/util/HashMap;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;->mSettings:Ljava/util/HashMap;

    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector;->mSettings:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger$StatusCollector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_27
    const-string p1, ", "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    :goto_30
    return-void
.end method
