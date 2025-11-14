.class public final Lcom/android/server/people/SessionInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAppTargetPredictor:Lcom/android/server/people/prediction/AppTargetPredictor;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;


# direct methods
.method public constructor <init>(Landroid/app/prediction/AppPredictionContext;Lcom/android/server/people/data/DataManager;ILandroid/content/Context;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v3, Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/SessionInfo;)V

    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getUiSurface()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "share"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v1, Lcom/android/server/people/prediction/ShareTargetPredictor;

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/people/prediction/ShareTargetPredictor;-><init>(Landroid/app/prediction/AppPredictionContext;Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;Lcom/android/server/people/data/DataManager;ILandroid/content/Context;)V

    goto :goto_2e

    :cond_26
    move-object v2, p1

    move-object v4, p2

    move v5, p3

    new-instance v1, Lcom/android/server/people/prediction/AppTargetPredictor;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/people/prediction/AppTargetPredictor;-><init>(Landroid/app/prediction/AppPredictionContext;Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;Lcom/android/server/people/data/DataManager;I)V

    :goto_2e
    iput-object v1, p0, Lcom/android/server/people/SessionInfo;->mAppTargetPredictor:Lcom/android/server/people/prediction/AppTargetPredictor;

    return-void
.end method
