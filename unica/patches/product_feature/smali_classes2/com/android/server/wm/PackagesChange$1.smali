.class public final Lcom/android/server/wm/PackagesChange$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/PackagesChange$PackagesDumpCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PackagesChange;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PackagesChange;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PackagesChange$1;->this$0:Lcom/android/server/wm/PackagesChange;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/PackagesChange$1;->this$0:Lcom/android/server/wm/PackagesChange;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackagesChange;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final executeShellCommand()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/PackagesChange$1;->this$0:Lcom/android/server/wm/PackagesChange;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/PackagesChange$1;->this$0:Lcom/android/server/wm/PackagesChange;

    iget-object p0, p0, Lcom/android/server/wm/PackagesChange;->mControllerName:Ljava/lang/String;

    return-object p0
.end method
