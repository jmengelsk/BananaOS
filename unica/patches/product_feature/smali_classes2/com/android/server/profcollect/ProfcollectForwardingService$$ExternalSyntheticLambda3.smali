.class public final synthetic Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/art/ArtManagerLocal$BatchDexoptStartCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    return-void
.end method


# virtual methods
.method public final onBatchDexoptStart(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Ljava/util/List;Lcom/android/server/art/model/BatchDexoptParams$Builder;Landroid/os/CancellationSignal;)V
    .registers 6

    sget-boolean p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sVerityEnforced:Z

    const-string/jumbo p0, "dex2oat_trace_freq"

    const/16 p1, 0x19

    invoke-static {p1, p0}, Lcom/android/server/profcollect/Utils;->withFrequency(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    sget-object p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    invoke-static {p0}, Lcom/android/server/profcollect/Utils;->checkPrerequisites(Lcom/android/server/profcollect/IProfCollectd;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_2a

    :cond_16
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/profcollect/IProfCollectd;I)V

    const/16 p0, 0x3e8

    int-to-long p3, p0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2a
    :goto_2a
    return-void
.end method
