.class public final synthetic Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/print/RemotePrintService;

.field public final synthetic f$1:Landroid/print/PrinterId;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/print/RemotePrintService;

    iput-object p2, p0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda9;->f$1:Landroid/print/PrinterId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/print/RemotePrintService;

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda9;->f$1:Landroid/print/PrinterId;

    invoke-virtual {v0, p0}, Lcom/android/server/print/RemotePrintService;->handleRequestCustomPrinterIcon(Landroid/print/PrinterId;)V

    return-void
.end method
