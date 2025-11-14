.class public final synthetic Lcom/android/server/power/shutdown/ShutdownDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/shutdown/ShutdownDialog;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/shutdown/ShutdownDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/shutdown/ShutdownDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/shutdown/ShutdownDialog;

    iput-object p2, p0, Lcom/android/server/power/shutdown/ShutdownDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/shutdown/ShutdownDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/shutdown/ShutdownDialog;

    iget-object p0, p0, Lcom/android/server/power/shutdown/ShutdownDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/power/shutdown/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
