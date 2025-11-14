.class public final Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    return-void
.end method


# virtual methods
.method public final onStart(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onStart "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "SemGoodCatchService"

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    iget-boolean p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mOn:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mOn:Z

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->process(Z)V

    :cond_0
    return-void
.end method

.method public final onStop(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onStop "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "SemGoodCatchService"

    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    iget-boolean p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mOn:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mOn:Z

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->process(Z)V

    :cond_0
    return-void
.end method
