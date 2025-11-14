.class public final Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;
.super Lcom/samsung/android/multicontrol/MultiControlManagerInternal;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/multicontrol/MultiControlManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/multicontrol/MultiControlManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-direct {p0}, Lcom/samsung/android/multicontrol/MultiControlManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final isMultiControlEnabled()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputFilter:Landroid/view/IInputFilter;

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
