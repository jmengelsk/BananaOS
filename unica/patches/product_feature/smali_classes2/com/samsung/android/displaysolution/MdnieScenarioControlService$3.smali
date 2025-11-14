.class public final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFolded:Z

    return-void
.end method

.method public final onTableModeChanged(Z)V
    .registers 2

    return-void
.end method
