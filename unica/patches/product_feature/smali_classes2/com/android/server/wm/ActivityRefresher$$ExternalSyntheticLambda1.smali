.class public final synthetic Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:Landroid/content/res/Configuration;

.field public final synthetic f$2:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/ActivityRecord;

    iput-object p2, p0, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;->f$1:Landroid/content/res/Configuration;

    iput-object p3, p0, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;->f$2:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;->f$1:Landroid/content/res/Configuration;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;->f$2:Landroid/content/res/Configuration;

    check-cast p1, Lcom/android/server/wm/ActivityRefresher$Evaluator;

    invoke-interface {p1, v0, v1, p0}, Lcom/android/server/wm/ActivityRefresher$Evaluator;->shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method
