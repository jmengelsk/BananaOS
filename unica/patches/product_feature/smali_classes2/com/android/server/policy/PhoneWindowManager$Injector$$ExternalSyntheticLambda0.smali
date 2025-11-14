.class public final synthetic Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManager$Injector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager$Injector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManager$Injector;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$Injector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManager$Injector;

    new-instance v0, Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$Injector;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$Injector;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v0, v1, p0}, Lcom/android/server/policy/GlobalActions;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    return-object v0
.end method
