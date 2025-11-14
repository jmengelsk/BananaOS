.class public final synthetic Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/om/OverlayManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->disableDynamicContrast()V

    const-string/jumbo p0, "OverlayManager"

    const-string/jumbo v0, "disableDynamicContrast done"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
