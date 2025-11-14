.class public final synthetic Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/InputManagerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InputManagerCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/InputManagerCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/InputManagerCallback;

    check-cast p1, Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    return-void
.end method
