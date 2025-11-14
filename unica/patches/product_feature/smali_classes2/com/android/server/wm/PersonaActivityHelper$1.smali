.class public final Lcom/android/server/wm/PersonaActivityHelper$1;
.super Landroid/app/TaskStackListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PersonaActivityHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PersonaActivityHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper$1;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityPinned(Ljava/lang/String;III)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper$1;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iput p2, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLastPIPModeActivityUserId:I

    return-void
.end method

.method public final onActivityUnpinned()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper$1;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iget v0, v0, Lcom/android/server/wm/PersonaActivityHelper;->mLastPIPModeActivityUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper$1;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLastReceivedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {p0, v0}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$mcheckAndLockSecureFolder(Lcom/android/server/wm/PersonaActivityHelper;Lcom/android/server/wm/ActivityRecord;)V

    :cond_0
    return-void
.end method
