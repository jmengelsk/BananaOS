.class public final Lcom/android/server/pm/ProcessLoggingHandler$1;
.super Landroid/content/pm/IOnChecksumsReadyListener$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/ProcessLoggingHandler;

.field public final synthetic val$loggingInfo:Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ProcessLoggingHandler;Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/ProcessLoggingHandler$1;->this$0:Lcom/android/server/pm/ProcessLoggingHandler;

    iput-object p2, p0, Lcom/android/server/pm/ProcessLoggingHandler$1;->val$loggingInfo:Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;

    invoke-direct {p0}, Landroid/content/pm/IOnChecksumsReadyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChecksumsReady(Ljava/util/List;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler$1;->this$0:Lcom/android/server/pm/ProcessLoggingHandler;

    iget-object p0, p0, Lcom/android/server/pm/ProcessLoggingHandler$1;->val$loggingInfo:Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApkChecksum;

    invoke-virtual {v2}, Landroid/content/pm/ApkChecksum;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/ApkChecksum;->getValue()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/pm/ProcessLoggingHandler;->processChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "ProcessLoggingHandler"

    const-string/jumbo v0, "requestChecksums() failed to return SHA256, see logs for details."

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/pm/ProcessLoggingHandler;->processChecksum(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;[B)V

    return-void
.end method
