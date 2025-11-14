.class public final Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/policy/WindowWakeUpPolicyInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/WindowWakeUpPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowWakeUpPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;->this$0:Lcom/android/server/policy/WindowWakeUpPolicy;

    return-void
.end method


# virtual methods
.method public final setInputWakeUpDelegate(Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;->this$0:Lcom/android/server/policy/WindowWakeUpPolicy;

    iput-object p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

    return-void
.end method
