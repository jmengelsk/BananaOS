.class public final synthetic Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/content/IntentSender;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;IZLandroid/content/IntentSender;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/pm/UserManagerService;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$2:Z

    iput-object p4, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$3:Landroid/content/IntentSender;

    iput-object p5, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/pm/UserManagerService;

    iget v1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$2:Z

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$3:Landroid/content/IntentSender;

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    sget-object v4, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    return-void
.end method
