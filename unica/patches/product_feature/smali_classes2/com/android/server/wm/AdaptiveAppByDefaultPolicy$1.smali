.class public final Lcom/android/server/wm/AdaptiveAppByDefaultPolicy$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/PackagesChange$PackagesDumpCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy$1;->this$0:Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "PolicyEnabled="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy$1;->this$0:Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/AdaptiveAppByDefaultPolicy;->isPolicyEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final executeShellCommand()V
    .registers 1

    return-void
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 1

    const-string p0, "AdaptiveAppByDefaultPolicy"

    return-object p0
.end method
