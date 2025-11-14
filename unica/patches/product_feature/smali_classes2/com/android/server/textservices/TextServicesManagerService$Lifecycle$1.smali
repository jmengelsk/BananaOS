.class public final Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;
.super Lcom/android/server/textservices/TextServicesManagerInternal;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;


# direct methods
.method public constructor <init>(Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;->this$0:Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    return-void
.end method


# virtual methods
.method public final getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;
    .registers 3

    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle$1;->this$0:Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;->mService:Lcom/android/server/textservices/TextServicesManagerService;

    sget v0, Lcom/android/server/textservices/TextServicesManagerService;->$r8$clinit:I

    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p0

    return-object p0
.end method
