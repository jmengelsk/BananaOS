.class public Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "bootChecking() - run"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    iget-object v1, v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkDOOnBoot()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    iget-object v1, v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkPOOnBoot()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    iget-object v1, v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKLMOnBoot()V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    iget-object v1, v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKesOnBoot()V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    iget-object v1, v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkELMOnBoot()V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    iget-object v1, v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkB2COnBoot()V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkConditionsToStart()V

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;->this$0:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    const-string/jumbo p0, "bootChecking() - finished"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
