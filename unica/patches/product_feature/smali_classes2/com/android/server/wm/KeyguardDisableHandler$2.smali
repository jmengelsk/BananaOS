.class public final Lcom/android/server/wm/KeyguardDisableHandler$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/KeyguardDisableHandler$Injector;


# instance fields
.field public final synthetic val$policy:Lcom/android/server/policy/WindowManagerPolicy;

.field public final synthetic val$userManager:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/pm/UserManagerInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler$2;->val$policy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object p2, p0, Lcom/android/server/wm/KeyguardDisableHandler$2;->val$userManager:Lcom/android/server/pm/UserManagerInternal;

    return-void
.end method
