.class public final Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final callingPid:I

.field public final callingUid:I

.field public intent:Landroid/content/Intent;

.field public final isReceiver:Z

.field public platformCompat:Lcom/android/server/compat/PlatformCompat;

.field public final resolveForStart:Z

.field public final resolvedType:Ljava/lang/String;

.field public snapshot:Lcom/android/server/pm/Computer;


# direct methods
.method public constructor <init>(ZIILandroid/content/Intent;Ljava/lang/String;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->isReceiver:Z

    iput-object p4, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolvedType:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolveForStart:Z

    iput p2, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    if-eqz p6, :cond_10

    goto :goto_11

    :cond_10
    const/4 p3, -0x1

    :goto_11
    iput p3, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingPid:I

    return-void
.end method


# virtual methods
.method public final reportEvent(IZ)V
    .registers 10

    iget-boolean v0, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolveForStart:Z

    if-eqz v0, :cond_11

    iget-object v4, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->resolvedType:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingUid:I

    iget v3, p0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->callingPid:I

    move v1, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/SaferIntentUtils;->reportUnsafeIntentEvent(IIILandroid/content/Intent;Ljava/lang/String;Z)V

    :cond_11
    return-void
.end method
