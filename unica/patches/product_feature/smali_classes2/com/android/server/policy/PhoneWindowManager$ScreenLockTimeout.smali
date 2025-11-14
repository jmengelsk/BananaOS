.class public final Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public options:Landroid/os/Bundle;

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->options:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->doKeyguardTimeout(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->doKeyguardTimeoutRequested:Z

    if-eqz v1, :cond_1

    iput-object v1, v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->doKeyguardTimeoutRequestedOptions:Landroid/os/Bundle;

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    if-nez v1, :cond_2

    const-class v1, Lcom/samsung/android/knox/PersonaManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/PersonaManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    :cond_2
    iget-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    if-eqz v1, :cond_4

    if-nez v1, :cond_3

    const-class v1, Lcom/samsung/android/knox/PersonaManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/PersonaManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    :cond_3
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    invoke-virtual {v0}, Lcom/samsung/android/knox/PersonaManagerInternal;->doKeyguardTimeout()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->options:Landroid/os/Bundle;

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
