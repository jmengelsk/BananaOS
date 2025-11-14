.class public final Lcom/android/server/wm/WindowContainer$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# instance fields
.field public final synthetic val$listener:Lcom/android/server/wm/WindowContainer$1;

.field public final synthetic val$receiver:Lcom/android/server/wm/WindowContainer;

.field public final synthetic val$supplier:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$2;->val$receiver:Lcom/android/server/wm/WindowContainer;

    iput-object p2, p0, Lcom/android/server/wm/WindowContainer$2;->val$supplier:Lcom/android/server/wm/WindowContainer;

    iput-object p3, p0, Lcom/android/server/wm/WindowContainer$2;->val$listener:Lcom/android/server/wm/WindowContainer$1;

    return-void
.end method


# virtual methods
.method public final onRemoved()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$2;->val$receiver:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$2;->val$supplier:Lcom/android/server/wm/WindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$2;->val$listener:Lcom/android/server/wm/WindowContainer$1;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ConfigurationContainer;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    return-void
.end method
